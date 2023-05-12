// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.operation.update_stack_instances_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i15;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/invalid_operation_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_id_already_exists_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_in_progress_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_not_found_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_not_found_exception.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stale_request_exception.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_instances_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/update_stack_instances_output.dart'
    as _i3;

/// Updates the parameter values for stack instances for the specified accounts, within the specified Amazon Web Services Regions. A stack instance refers to a stack in a specific account and Region.
///
/// You can only update stack instances in Amazon Web Services Regions and accounts where they already exist; to create additional stack instances, use [CreateStackInstances](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html).
///
/// During stack set updates, any parameters overridden for a stack instance aren't updated, but retain their overridden value.
///
/// You can only update the parameter _values_ that are specified in the stack set; to add or delete a parameter itself, use [UpdateStackSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use [UpdateStackSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using `UpdateStackInstances`.
class UpdateStackInstancesOperation extends _i1.HttpOperation<
    _i2.UpdateStackInstancesInput,
    _i2.UpdateStackInstancesInput,
    _i3.UpdateStackInstancesOutput,
    _i3.UpdateStackInstancesOutput> {
  /// Updates the parameter values for stack instances for the specified accounts, within the specified Amazon Web Services Regions. A stack instance refers to a stack in a specific account and Region.
  ///
  /// You can only update stack instances in Amazon Web Services Regions and accounts where they already exist; to create additional stack instances, use [CreateStackInstances](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html).
  ///
  /// During stack set updates, any parameters overridden for a stack instance aren't updated, but retain their overridden value.
  ///
  /// You can only update the parameter _values_ that are specified in the stack set; to add or delete a parameter itself, use [UpdateStackSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use [UpdateStackSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html) to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using `UpdateStackInstances`.
  UpdateStackInstancesOperation({
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
          _i2.UpdateStackInstancesInput,
          _i2.UpdateStackInstancesInput,
          _i3.UpdateStackInstancesOutput,
          _i3.UpdateStackInstancesOutput>> protocols = [
    _i5.AwsQueryProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.cloudFormation,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'UpdateStackInstances',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i5.AwsQueryError(
          shape: 'InvalidOperationException',
          code: 'InvalidOperationException',
          httpResponseCode: 400,
        ),
        _i5.AwsQueryError(
          shape: 'OperationIdAlreadyExistsException',
          code: 'OperationIdAlreadyExistsException',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'OperationInProgressException',
          code: 'OperationInProgressException',
          httpResponseCode: 409,
        ),
        _i5.AwsQueryError(
          shape: 'StackInstanceNotFoundException',
          code: 'StackInstanceNotFoundException',
          httpResponseCode: 404,
        ),
        _i5.AwsQueryError(
          shape: 'StackSetNotFoundException',
          code: 'StackSetNotFoundException',
          httpResponseCode: 404,
        ),
        _i5.AwsQueryError(
          shape: 'StaleRequestException',
          code: 'StaleRequestException',
          httpResponseCode: 409,
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
  _i1.HttpRequest buildRequest(_i2.UpdateStackInstancesInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.UpdateStackInstancesOutput? output]) => 200;
  @override
  _i3.UpdateStackInstancesOutput buildOutput(
    _i3.UpdateStackInstancesOutput payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.UpdateStackInstancesOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'InvalidOperationException',
          ),
          _i1.ErrorKind.client,
          _i9.InvalidOperationException,
          statusCode: 400,
          builder: _i9.InvalidOperationException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'OperationIdAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          _i10.OperationIdAlreadyExistsException,
          statusCode: 409,
          builder: _i10.OperationIdAlreadyExistsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'OperationInProgressException',
          ),
          _i1.ErrorKind.client,
          _i11.OperationInProgressException,
          statusCode: 409,
          builder: _i11.OperationInProgressException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'StackInstanceNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i12.StackInstanceNotFoundException,
          statusCode: 404,
          builder: _i12.StackInstanceNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'StackSetNotFoundException',
          ),
          _i1.ErrorKind.client,
          _i13.StackSetNotFoundException,
          statusCode: 404,
          builder: _i13.StackSetNotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'StaleRequestException',
          ),
          _i1.ErrorKind.client,
          _i14.StaleRequestException,
          statusCode: 409,
          builder: _i14.StaleRequestException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'UpdateStackInstances';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.UpdateStackInstancesOutput> run(
    _i2.UpdateStackInstancesInput input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i15.runZoned(
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