// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.operation.create_instance_profile_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/iam/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/iam/model/concurrent_modification_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/create_instance_profile_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/create_instance_profile_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/entity_already_exists_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/iam/model/invalid_input_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/iam/model/limit_exceeded_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/iam/model/service_failure_exception.dart'
    as _i13;

/// Creates a new instance profile. For information about instance profiles, see [Using roles for applications on Amazon EC2](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html) in the _IAM User Guide_, and [Instance profiles](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html#ec2-instance-profile) in the _Amazon EC2 User Guide_.
///
/// For information about the number of instance profiles you can create, see [IAM object quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
class CreateInstanceProfileOperation extends _i1.HttpOperation<
    _i2.CreateInstanceProfileRequest,
    _i2.CreateInstanceProfileRequest,
    _i3.CreateInstanceProfileResponse,
    _i3.CreateInstanceProfileResponse> {
  /// Creates a new instance profile. For information about instance profiles, see [Using roles for applications on Amazon EC2](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html) in the _IAM User Guide_, and [Instance profiles](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html#ec2-instance-profile) in the _Amazon EC2 User Guide_.
  ///
  /// For information about the number of instance profiles you can create, see [IAM object quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the _IAM User Guide_.
  CreateInstanceProfileOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.CreateInstanceProfileRequest,
          _i2.CreateInstanceProfileRequest,
          _i3.CreateInstanceProfileResponse,
          _i3.CreateInstanceProfileResponse>> protocols = [
    _i5.AwsQueryProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.iam,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'CreateInstanceProfile',
      version: '2010-05-08',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'ConcurrentModificationException',
          code: 'ConcurrentModification',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'EntityAlreadyExistsException',
          code: 'EntityAlreadyExists',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'InvalidInputException',
          code: 'InvalidInput',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'LimitExceededException',
          code: 'LimitExceeded',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'ServiceFailureException',
          code: 'ServiceFailure',
          httpResponseCode: 500,
        ),
      ],
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.CreateInstanceProfileRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.CreateInstanceProfileResponse? output]) => 200;
  @override
  _i3.CreateInstanceProfileResponse buildOutput(
    _i3.CreateInstanceProfileResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.CreateInstanceProfileResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ConcurrentModificationException',
          ),
          _i1.ErrorKind.client,
          _i9.ConcurrentModificationException,
          statusCode: 409,
          builder: _i9.ConcurrentModificationException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'EntityAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          _i10.EntityAlreadyExistsException,
          statusCode: 409,
          builder: _i10.EntityAlreadyExistsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'InvalidInputException',
          ),
          _i1.ErrorKind.client,
          _i11.InvalidInputException,
          statusCode: 400,
          builder: _i11.InvalidInputException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i12.LimitExceededException,
          statusCode: 409,
          builder: _i12.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.iam',
            shape: 'ServiceFailureException',
          ),
          _i1.ErrorKind.server,
          _i13.ServiceFailureException,
          statusCode: 500,
          builder: _i13.ServiceFailureException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'CreateInstanceProfile';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.CreateInstanceProfileResponse> run(
    _i2.CreateInstanceProfileRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i14.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}