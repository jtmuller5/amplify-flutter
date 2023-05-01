// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.simulate_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/evaluation_result.dart' as _i2;

part 'simulate_policy_response.g.dart';

/// Contains the response to a successful SimulatePrincipalPolicy or SimulateCustomPolicy request.
abstract class SimulatePolicyResponse
    with _i1.AWSEquatable<SimulatePolicyResponse>
    implements Built<SimulatePolicyResponse, SimulatePolicyResponseBuilder> {
  /// Contains the response to a successful SimulatePrincipalPolicy or SimulateCustomPolicy request.
  factory SimulatePolicyResponse({
    List<_i2.EvaluationResult>? evaluationResults,
    bool? isTruncated,
    String? marker,
  }) {
    return _$SimulatePolicyResponse._(
      evaluationResults:
          evaluationResults == null ? null : _i3.BuiltList(evaluationResults),
      isTruncated: isTruncated,
      marker: marker,
    );
  }

  /// Contains the response to a successful SimulatePrincipalPolicy or SimulateCustomPolicy request.
  factory SimulatePolicyResponse.build(
          [void Function(SimulatePolicyResponseBuilder) updates]) =
      _$SimulatePolicyResponse;

  const SimulatePolicyResponse._();

  /// Constructs a [SimulatePolicyResponse] from a [payload] and [response].
  factory SimulatePolicyResponse.fromResponse(
    SimulatePolicyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    SimulatePolicyResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimulatePolicyResponseBuilder b) {}

  /// The results of the simulation.
  _i3.BuiltList<_i2.EvaluationResult>? get evaluationResults;

  /// A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the `Marker` request parameter to retrieve more items. Note that IAM might return fewer than the `MaxItems` number of results even when there are more results available. We recommend that you check `IsTruncated` after every call to ensure that you receive all your results.
  bool? get isTruncated;

  /// When `IsTruncated` is `true`, this element is present and contains the value to use for the `Marker` parameter in a subsequent pagination request.
  String? get marker;
  @override
  List<Object?> get props => [
        evaluationResults,
        isTruncated,
        marker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SimulatePolicyResponse');
    helper.add(
      'evaluationResults',
      evaluationResults,
    );
    helper.add(
      'isTruncated',
      isTruncated,
    );
    helper.add(
      'marker',
      marker,
    );
    return helper.toString();
  }
}

class SimulatePolicyResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<SimulatePolicyResponse> {
  const SimulatePolicyResponseAwsQuerySerializer()
      : super('SimulatePolicyResponse');

  @override
  Iterable<Type> get types => const [
        SimulatePolicyResponse,
        _$SimulatePolicyResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SimulatePolicyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimulatePolicyResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'EvaluationResults':
          if (value != null) {
            result.evaluationResults.replace((const _i4.XmlBuiltListSerializer(
                    indexer: _i4.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.EvaluationResult)],
              ),
            ) as _i3.BuiltList<_i2.EvaluationResult>));
          }
          break;
        case 'IsTruncated':
          if (value != null) {
            result.isTruncated = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'Marker':
          if (value != null) {
            result.marker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as SimulatePolicyResponse);
    final result = <Object?>[
      const _i4.XmlElementName(
        'SimulatePolicyResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.evaluationResults != null) {
      result
        ..add(const _i4.XmlElementName('EvaluationResults'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.evaluationResults!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.EvaluationResult)],
          ),
        ));
    }
    if (payload.isTruncated != null) {
      result
        ..add(const _i4.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          payload.isTruncated!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.marker != null) {
      result
        ..add(const _i4.XmlElementName('Marker'))
        ..add(serializers.serialize(
          payload.marker!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}