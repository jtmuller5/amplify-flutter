// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_up_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

import '../common/mock_clients.dart';
import '../common/mock_config.dart';
import '../common/mock_secure_storage.dart';

void main() {
  group('SignUpStateMachine', () {
    late CognitoAuthStateMachine stateMachine;
    late SecureStorageInterface secureStorage;

    const username = 'username';
    const password = 'password';
    final signUpEvent = SignUpEvent.initiate(
      parameters: SignUpParameters(
        (p) => p
          ..username = username
          ..password = password,
      ),
      userAttributes: const {
        'email': 'test@example.com',
      },
      validationData: const {'key': 'value'},
    );

    setUp(() {
      stateMachine = CognitoAuthStateMachine();
      secureStorage = MockSecureStorage();
      stateMachine.addInstance(secureStorage);
    });

    test('success', () async {
      final client = MockCognitoIdentityProviderClient(
        signUp: () async => SignUpResponse(
          userSub: userSub,
          userConfirmed: true,
        ),
      );
      stateMachine.dispatch(AuthEvent.configure(mockConfig));
      await stateMachine.stream.whereType<AuthConfigured>().first;

      stateMachine
        ..addInstance<CognitoIdentityProviderClient>(client)
        ..dispatch(signUpEvent);

      expect(
        stateMachine.stream.whereType<SignUpState>(),
        emitsInOrder(<Matcher>[
          isA<SignUpInitiating>(),
          isA<SignUpSuccess>().having(
            (state) => state.userId,
            'userId',
            userSub,
          ),
        ]),
      );
    });

    test('needs confirmation', () async {
      final client = MockCognitoIdentityProviderClient(
        signUp: () async => SignUpResponse(
          userSub: userSub,
          userConfirmed: false,
        ),
        confirmSignUp: () async => ConfirmSignUpResponse(),
      );
      stateMachine.dispatch(AuthEvent.configure(mockConfig));
      await stateMachine.stream.whereType<AuthConfigured>().first;

      stateMachine
        ..addInstance<CognitoIdentityProviderClient>(client)
        ..dispatch(signUpEvent);

      await expectLater(
        stateMachine.stream.whereType<SignUpState>(),
        emitsInOrder(<Matcher>[
          isA<SignUpInitiating>(),
          isA<SignUpNeedsConfirmation>().having(
            (state) => state.userId,
            'userId',
            userSub,
          ),
        ]),
      );

      stateMachine.dispatch(
        const SignUpEvent.confirm(
          username: username,
          confirmationCode: '12345',
        ),
      );
      expect(
        stateMachine.stream.whereType<SignUpState>(),
        emitsInOrder(<Matcher>[
          isA<SignUpConfirming>(),
          isA<SignUpSuccess>(),
        ]),
      );
    });

    test('fails, then succeeds', () async {
      var client = MockCognitoIdentityProviderClient(
        signUp: () async => throw _SignUpException(),
      );
      stateMachine.dispatch(AuthEvent.configure(mockConfig));
      await stateMachine.stream.whereType<AuthConfigured>().first;

      stateMachine
        ..addInstance<CognitoIdentityProviderClient>(client)
        ..dispatch(signUpEvent);

      await expectLater(
        stateMachine.stream.whereType<SignUpState>(),
        emitsInOrder(<Matcher>[
          isA<SignUpInitiating>(),
          isA<SignUpFailure>().having(
            (state) => state.exception,
            'exception',
            isA<_SignUpException>(),
          ),
        ]),
      );

      client = MockCognitoIdentityProviderClient(
        signUp: () async => SignUpResponse(
          userSub: userSub,
          userConfirmed: true,
        ),
      );
      stateMachine
        ..addInstance<CognitoIdentityProviderClient>(client)
        ..dispatch(signUpEvent);

      expect(
        stateMachine.stream.whereType<SignUpState>(),
        emitsInOrder(<Matcher>[
          isA<SignUpInitiating>(),
          isA<SignUpSuccess>().having(
            (state) => state.userId,
            'userId',
            userSub,
          ),
        ]),
      );
    });
  });
}

class _SignUpException implements Exception {}