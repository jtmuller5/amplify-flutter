// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.resend_confirmation_code_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/analytics_metadata_type.dart'
    as _i4;
import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/user_context_data_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'resend_confirmation_code_request.g.dart';

/// Represents the request to resend the confirmation code.
abstract class ResendConfirmationCodeRequest
    with
        _i1.HttpInput<ResendConfirmationCodeRequest>,
        _i2.AWSEquatable<ResendConfirmationCodeRequest>
    implements
        Built<ResendConfirmationCodeRequest,
            ResendConfirmationCodeRequestBuilder> {
  /// Represents the request to resend the confirmation code.
  factory ResendConfirmationCodeRequest({
    required String clientId,
    String? secretHash,
    _i3.UserContextDataType? userContextData,
    required String username,
    _i4.AnalyticsMetadataType? analyticsMetadata,
    Map<String, String>? clientMetadata,
  }) {
    return _$ResendConfirmationCodeRequest._(
      clientId: clientId,
      secretHash: secretHash,
      userContextData: userContextData,
      username: username,
      analyticsMetadata: analyticsMetadata,
      clientMetadata:
          clientMetadata == null ? null : _i5.BuiltMap(clientMetadata),
    );
  }

  /// Represents the request to resend the confirmation code.
  factory ResendConfirmationCodeRequest.build(
          [void Function(ResendConfirmationCodeRequestBuilder) updates]) =
      _$ResendConfirmationCodeRequest;

  const ResendConfirmationCodeRequest._();

  factory ResendConfirmationCodeRequest.fromRequest(
    ResendConfirmationCodeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ResendConfirmationCodeRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResendConfirmationCodeRequestBuilder b) {}

  /// The ID of the client associated with the user pool.
  String get clientId;

  /// A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
  String? get secretHash;

  /// Contextual data about your user session, such as the device fingerprint, IP address, or location. Amazon Cognito advanced security evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito when it makes API requests.
  _i3.UserContextDataType? get userContextData;

  /// The `username` attribute of the user to whom you want to resend a confirmation code.
  String get username;

  /// The Amazon Pinpoint analytics metadata that contributes to your metrics for `ResendConfirmationCode` calls.
  _i4.AnalyticsMetadataType? get analyticsMetadata;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.
  ///
  /// You create custom workflows by assigning Lambda functions to user pool triggers. When you use the ResendConfirmationCode API action, Amazon Cognito invokes the function that is assigned to the _custom message_ trigger. When Amazon Cognito invokes this function, it passes a JSON payload, which the function receives as input. This payload contains a `clientMetadata` attribute, which provides the data that you assigned to the ClientMetadata parameter in your ResendConfirmationCode request. In your function code in Lambda, you can process the `clientMetadata` value to enhance your workflow for your specific needs.
  ///
  /// For more information, see [Customizing user pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html) in the _Amazon Cognito Developer Guide_.
  ///
  /// When you use the ClientMetadata parameter, remember that Amazon Cognito won't do the following:
  ///
  /// *   Store the ClientMetadata value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration doesn't include triggers, the ClientMetadata parameter serves no purpose.
  ///
  /// *   Validate the ClientMetadata value.
  ///
  /// *   Encrypt the ClientMetadata value. Don't use Amazon Cognito to provide sensitive information.
  _i5.BuiltMap<String, String>? get clientMetadata;
  @override
  ResendConfirmationCodeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientId,
        secretHash,
        userContextData,
        username,
        analyticsMetadata,
        clientMetadata,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResendConfirmationCodeRequest');
    helper.add(
      'clientId',
      '***SENSITIVE***',
    );
    helper.add(
      'secretHash',
      '***SENSITIVE***',
    );
    helper.add(
      'userContextData',
      userContextData,
    );
    helper.add(
      'username',
      '***SENSITIVE***',
    );
    helper.add(
      'analyticsMetadata',
      analyticsMetadata,
    );
    helper.add(
      'clientMetadata',
      clientMetadata,
    );
    return helper.toString();
  }
}

class ResendConfirmationCodeRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ResendConfirmationCodeRequest> {
  const ResendConfirmationCodeRequestAwsJson11Serializer()
      : super('ResendConfirmationCodeRequest');

  @override
  Iterable<Type> get types => const [
        ResendConfirmationCodeRequest,
        _$ResendConfirmationCodeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResendConfirmationCodeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResendConfirmationCodeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ClientId':
          result.clientId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'SecretHash':
          if (value != null) {
            result.secretHash = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'UserContextData':
          if (value != null) {
            result.userContextData.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.UserContextDataType),
            ) as _i3.UserContextDataType));
          }
          break;
        case 'Username':
          result.username = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'AnalyticsMetadata':
          if (value != null) {
            result.analyticsMetadata.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AnalyticsMetadataType),
            ) as _i4.AnalyticsMetadataType));
          }
          break;
        case 'ClientMetadata':
          if (value != null) {
            result.clientMetadata.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i5.BuiltMap<String, String>));
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
    final payload = (object as ResendConfirmationCodeRequest);
    final result = <Object?>[
      'ClientId',
      serializers.serialize(
        payload.clientId,
        specifiedType: const FullType(String),
      ),
      'Username',
      serializers.serialize(
        payload.username,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.secretHash != null) {
      result
        ..add('SecretHash')
        ..add(serializers.serialize(
          payload.secretHash!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userContextData != null) {
      result
        ..add('UserContextData')
        ..add(serializers.serialize(
          payload.userContextData!,
          specifiedType: const FullType(_i3.UserContextDataType),
        ));
    }
    if (payload.analyticsMetadata != null) {
      result
        ..add('AnalyticsMetadata')
        ..add(serializers.serialize(
          payload.analyticsMetadata!,
          specifiedType: const FullType(_i4.AnalyticsMetadataType),
        ));
    }
    if (payload.clientMetadata != null) {
      result
        ..add('ClientMetadata')
        ..add(serializers.serialize(
          payload.clientMetadata!,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result;
  }
}