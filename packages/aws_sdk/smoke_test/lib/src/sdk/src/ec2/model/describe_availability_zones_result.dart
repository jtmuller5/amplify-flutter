// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_availability_zones_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone.dart';

part 'describe_availability_zones_result.g.dart';

abstract class DescribeAvailabilityZonesResult
    with
        _i1.AWSEquatable<DescribeAvailabilityZonesResult>
    implements
        Built<DescribeAvailabilityZonesResult,
            DescribeAvailabilityZonesResultBuilder> {
  factory DescribeAvailabilityZonesResult(
      {List<AvailabilityZone>? availabilityZones}) {
    return _$DescribeAvailabilityZonesResult._(
        availabilityZones: availabilityZones == null
            ? null
            : _i2.BuiltList(availabilityZones));
  }

  factory DescribeAvailabilityZonesResult.build(
          [void Function(DescribeAvailabilityZonesResultBuilder) updates]) =
      _$DescribeAvailabilityZonesResult;

  const DescribeAvailabilityZonesResult._();

  /// Constructs a [DescribeAvailabilityZonesResult] from a [payload] and [response].
  factory DescribeAvailabilityZonesResult.fromResponse(
    DescribeAvailabilityZonesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeAvailabilityZonesResult>>
      serializers = [DescribeAvailabilityZonesResultEc2QuerySerializer()];

  /// Information about the Availability Zones, Local Zones, and Wavelength Zones.
  _i2.BuiltList<AvailabilityZone>? get availabilityZones;
  @override
  List<Object?> get props => [availabilityZones];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAvailabilityZonesResult')
          ..add(
            'availabilityZones',
            availabilityZones,
          );
    return helper.toString();
  }
}

class DescribeAvailabilityZonesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeAvailabilityZonesResult> {
  const DescribeAvailabilityZonesResultEc2QuerySerializer()
      : super('DescribeAvailabilityZonesResult');

  @override
  Iterable<Type> get types => const [
        DescribeAvailabilityZonesResult,
        _$DescribeAvailabilityZonesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAvailabilityZonesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAvailabilityZonesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZoneInfo':
          result.availabilityZones.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AvailabilityZone)],
            ),
          ) as _i2.BuiltList<AvailabilityZone>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeAvailabilityZonesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeAvailabilityZonesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeAvailabilityZonesResult(:availabilityZones) = object;
    if (availabilityZones != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZoneInfo'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          availabilityZones,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(AvailabilityZone)],
          ),
        ));
    }
    return result$;
  }
}