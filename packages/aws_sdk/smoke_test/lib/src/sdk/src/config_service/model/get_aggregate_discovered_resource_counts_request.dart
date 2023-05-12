// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_aggregate_discovered_resource_counts_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_count_filters.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/resource_count_group_key.dart'
    as _i4;

part 'get_aggregate_discovered_resource_counts_request.g.dart';

abstract class GetAggregateDiscoveredResourceCountsRequest
    with
        _i1.HttpInput<GetAggregateDiscoveredResourceCountsRequest>,
        _i2.AWSEquatable<GetAggregateDiscoveredResourceCountsRequest>
    implements
        Built<GetAggregateDiscoveredResourceCountsRequest,
            GetAggregateDiscoveredResourceCountsRequestBuilder> {
  factory GetAggregateDiscoveredResourceCountsRequest({
    required String configurationAggregatorName,
    _i3.ResourceCountFilters? filters,
    _i4.ResourceCountGroupKey? groupByKey,
    int? limit,
    String? nextToken,
  }) {
    return _$GetAggregateDiscoveredResourceCountsRequest._(
      configurationAggregatorName: configurationAggregatorName,
      filters: filters,
      groupByKey: groupByKey,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory GetAggregateDiscoveredResourceCountsRequest.build(
      [void Function(GetAggregateDiscoveredResourceCountsRequestBuilder)
          updates]) = _$GetAggregateDiscoveredResourceCountsRequest;

  const GetAggregateDiscoveredResourceCountsRequest._();

  factory GetAggregateDiscoveredResourceCountsRequest.fromRequest(
    GetAggregateDiscoveredResourceCountsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetAggregateDiscoveredResourceCountsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAggregateDiscoveredResourceCountsRequestBuilder b) {}

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// Filters the results based on the `ResourceCountFilters` object.
  _i3.ResourceCountFilters? get filters;

  /// The key to group the resource counts.
  _i4.ResourceCountGroupKey? get groupByKey;

  /// The maximum number of GroupedResourceCount objects returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, Config uses the default.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetAggregateDiscoveredResourceCountsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        filters,
        groupByKey,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetAggregateDiscoveredResourceCountsRequest');
    helper.add(
      'configurationAggregatorName',
      configurationAggregatorName,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'groupByKey',
      groupByKey,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetAggregateDiscoveredResourceCountsRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<GetAggregateDiscoveredResourceCountsRequest> {
  const GetAggregateDiscoveredResourceCountsRequestAwsJson11Serializer()
      : super('GetAggregateDiscoveredResourceCountsRequest');

  @override
  Iterable<Type> get types => const [
        GetAggregateDiscoveredResourceCountsRequest,
        _$GetAggregateDiscoveredResourceCountsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetAggregateDiscoveredResourceCountsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAggregateDiscoveredResourceCountsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Filters':
          result.filters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ResourceCountFilters),
          ) as _i3.ResourceCountFilters));
        case 'GroupByKey':
          result.groupByKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ResourceCountGroupKey),
          ) as _i4.ResourceCountGroupKey);
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetAggregateDiscoveredResourceCountsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetAggregateDiscoveredResourceCountsRequest(
      :configurationAggregatorName,
      :filters,
      :groupByKey,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
      'ConfigurationAggregatorName',
      serializers.serialize(
        configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (filters != null) {
      result$
        ..add('Filters')
        ..add(serializers.serialize(
          filters,
          specifiedType: const FullType(_i3.ResourceCountFilters),
        ));
    }
    if (groupByKey != null) {
      result$
        ..add('GroupByKey')
        ..add(serializers.serialize(
          groupByKey,
          specifiedType: const FullType(_i4.ResourceCountGroupKey),
        ));
    }
    if (limit != null) {
      result$
        ..add('Limit')
        ..add(serializers.serialize(
          limit,
          specifiedType: const FullType(int),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}