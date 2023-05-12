// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.respond_to_auth_challenge_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/authentication_result_type.dart'
    as _i3;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/challenge_name_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'respond_to_auth_challenge_response.g.dart';

/// The response to respond to the authentication challenge.
abstract class RespondToAuthChallengeResponse
    with
        _i1.AWSEquatable<RespondToAuthChallengeResponse>
    implements
        Built<RespondToAuthChallengeResponse,
            RespondToAuthChallengeResponseBuilder> {
  /// The response to respond to the authentication challenge.
  factory RespondToAuthChallengeResponse({
    _i2.ChallengeNameType? challengeName,
    String? session,
    Map<String, String>? challengeParameters,
    _i3.AuthenticationResultType? authenticationResult,
  }) {
    return _$RespondToAuthChallengeResponse._(
      challengeName: challengeName,
      session: session,
      challengeParameters: challengeParameters == null
          ? null
          : _i4.BuiltMap(challengeParameters),
      authenticationResult: authenticationResult,
    );
  }

  /// The response to respond to the authentication challenge.
  factory RespondToAuthChallengeResponse.build(
          [void Function(RespondToAuthChallengeResponseBuilder) updates]) =
      _$RespondToAuthChallengeResponse;

  const RespondToAuthChallengeResponse._();

  /// Constructs a [RespondToAuthChallengeResponse] from a [payload] and [response].
  factory RespondToAuthChallengeResponse.fromResponse(
    RespondToAuthChallengeResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    RespondToAuthChallengeResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RespondToAuthChallengeResponseBuilder b) {}

  /// The challenge name. For more information, see [InitiateAuth](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html).
  _i2.ChallengeNameType? get challengeName;

  /// The session that should be passed both ways in challenge-response calls to the service. If the caller must pass another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next `RespondToAuthChallenge` API call.
  String? get session;

  /// The challenge parameters. For more information, see [InitiateAuth](https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html).
  _i4.BuiltMap<String, String>? get challengeParameters;

  /// The result returned by the server in response to the request to respond to the authentication challenge.
  _i3.AuthenticationResultType? get authenticationResult;
  @override
  List<Object?> get props => [
        challengeName,
        session,
        challengeParameters,
        authenticationResult,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RespondToAuthChallengeResponse');
    helper.add(
      'challengeName',
      challengeName,
    );
    helper.add(
      'session',
      session,
    );
    helper.add(
      'challengeParameters',
      challengeParameters,
    );
    helper.add(
      'authenticationResult',
      authenticationResult,
    );
    return helper.toString();
  }
}

class RespondToAuthChallengeResponseAwsJson11Serializer
    extends _i5.StructuredSmithySerializer<RespondToAuthChallengeResponse> {
  const RespondToAuthChallengeResponseAwsJson11Serializer()
      : super('RespondToAuthChallengeResponse');

  @override
  Iterable<Type> get types => const [
        RespondToAuthChallengeResponse,
        _$RespondToAuthChallengeResponse,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RespondToAuthChallengeResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RespondToAuthChallengeResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ChallengeName':
          if (value != null) {
            result.challengeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ChallengeNameType),
            ) as _i2.ChallengeNameType);
          }
          break;
        case 'Session':
          if (value != null) {
            result.session = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ChallengeParameters':
          if (value != null) {
            result.challengeParameters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i4.BuiltMap<String, String>));
          }
          break;
        case 'AuthenticationResult':
          if (value != null) {
            result.authenticationResult.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AuthenticationResultType),
            ) as _i3.AuthenticationResultType));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as RespondToAuthChallengeResponse);
    final result = <Object?>[];
    if (payload.challengeName != null) {
      result
        ..add('ChallengeName')
        ..add(serializers.serialize(
          payload.challengeName!,
          specifiedType: const FullType(_i2.ChallengeNameType),
        ));
    }
    if (payload.session != null) {
      result
        ..add('Session')
        ..add(serializers.serialize(
          payload.session!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.challengeParameters != null) {
      result
        ..add('ChallengeParameters')
        ..add(serializers.serialize(
          payload.challengeParameters!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.authenticationResult != null) {
      result
        ..add('AuthenticationResult')
        ..add(serializers.serialize(
          payload.authenticationResult!,
          specifiedType: const FullType(_i3.AuthenticationResultType),
        ));
    }
    return result;
  }
}