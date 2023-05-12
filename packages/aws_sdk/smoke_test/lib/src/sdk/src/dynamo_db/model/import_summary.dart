// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.import_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/import_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/input_format.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/s3_bucket_source.dart'
    as _i3;

part 'import_summary.g.dart';

/// Summary information about the source file for the import.
abstract class ImportSummary
    with _i1.AWSEquatable<ImportSummary>
    implements Built<ImportSummary, ImportSummaryBuilder> {
  /// Summary information about the source file for the import.
  factory ImportSummary({
    String? importArn,
    _i2.ImportStatus? importStatus,
    String? tableArn,
    _i3.S3BucketSource? s3BucketSource,
    String? cloudWatchLogGroupArn,
    _i4.InputFormat? inputFormat,
    DateTime? startTime,
    DateTime? endTime,
  }) {
    return _$ImportSummary._(
      importArn: importArn,
      importStatus: importStatus,
      tableArn: tableArn,
      s3BucketSource: s3BucketSource,
      cloudWatchLogGroupArn: cloudWatchLogGroupArn,
      inputFormat: inputFormat,
      startTime: startTime,
      endTime: endTime,
    );
  }

  /// Summary information about the source file for the import.
  factory ImportSummary.build([void Function(ImportSummaryBuilder) updates]) =
      _$ImportSummary;

  const ImportSummary._();

  static const List<_i5.SmithySerializer> serializers = [
    ImportSummaryAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportSummaryBuilder b) {}

  /// The Amazon Resource Number (ARN) corresponding to the import request.
  String? get importArn;

  /// The status of the import operation.
  _i2.ImportStatus? get importStatus;

  /// The Amazon Resource Number (ARN) of the table being imported into.
  String? get tableArn;

  /// The path and S3 bucket of the source file that is being imported. This includes the S3Bucket (required), S3KeyPrefix (optional) and S3BucketOwner (optional if the bucket is owned by the requester).
  _i3.S3BucketSource? get s3BucketSource;

  /// The Amazon Resource Number (ARN) of the Cloudwatch Log Group associated with this import task.
  String? get cloudWatchLogGroupArn;

  /// The format of the source data. Valid values are `CSV`, `DYNAMODB_JSON` or `ION`.
  _i4.InputFormat? get inputFormat;

  /// The time at which this import task began.
  DateTime? get startTime;

  /// The time at which this import task ended. (Does this include the successful complete creation of the table it was imported to?)
  DateTime? get endTime;
  @override
  List<Object?> get props => [
        importArn,
        importStatus,
        tableArn,
        s3BucketSource,
        cloudWatchLogGroupArn,
        inputFormat,
        startTime,
        endTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportSummary');
    helper.add(
      'importArn',
      importArn,
    );
    helper.add(
      'importStatus',
      importStatus,
    );
    helper.add(
      'tableArn',
      tableArn,
    );
    helper.add(
      's3BucketSource',
      s3BucketSource,
    );
    helper.add(
      'cloudWatchLogGroupArn',
      cloudWatchLogGroupArn,
    );
    helper.add(
      'inputFormat',
      inputFormat,
    );
    helper.add(
      'startTime',
      startTime,
    );
    helper.add(
      'endTime',
      endTime,
    );
    return helper.toString();
  }
}

class ImportSummaryAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<ImportSummary> {
  const ImportSummaryAwsJson10Serializer() : super('ImportSummary');

  @override
  Iterable<Type> get types => const [
        ImportSummary,
        _$ImportSummary,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ImportSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ImportArn':
          result.importArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ImportStatus':
          result.importStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ImportStatus),
          ) as _i2.ImportStatus);
        case 'TableArn':
          result.tableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'S3BucketSource':
          result.s3BucketSource.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.S3BucketSource),
          ) as _i3.S3BucketSource));
        case 'CloudWatchLogGroupArn':
          result.cloudWatchLogGroupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InputFormat':
          result.inputFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.InputFormat),
          ) as _i4.InputFormat);
        case 'StartTime':
          result.startTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'EndTime':
          result.endTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ImportSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ImportSummary(
      :importArn,
      :importStatus,
      :tableArn,
      :s3BucketSource,
      :cloudWatchLogGroupArn,
      :inputFormat,
      :startTime,
      :endTime
    ) = object;
    if (importArn != null) {
      result$
        ..add('ImportArn')
        ..add(serializers.serialize(
          importArn,
          specifiedType: const FullType(String),
        ));
    }
    if (importStatus != null) {
      result$
        ..add('ImportStatus')
        ..add(serializers.serialize(
          importStatus,
          specifiedType: const FullType(_i2.ImportStatus),
        ));
    }
    if (tableArn != null) {
      result$
        ..add('TableArn')
        ..add(serializers.serialize(
          tableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (s3BucketSource != null) {
      result$
        ..add('S3BucketSource')
        ..add(serializers.serialize(
          s3BucketSource,
          specifiedType: const FullType(_i3.S3BucketSource),
        ));
    }
    if (cloudWatchLogGroupArn != null) {
      result$
        ..add('CloudWatchLogGroupArn')
        ..add(serializers.serialize(
          cloudWatchLogGroupArn,
          specifiedType: const FullType(String),
        ));
    }
    if (inputFormat != null) {
      result$
        ..add('InputFormat')
        ..add(serializers.serialize(
          inputFormat,
          specifiedType: const FullType(_i4.InputFormat),
        ));
    }
    if (startTime != null) {
      result$
        ..add('StartTime')
        ..add(serializers.serialize(
          startTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (endTime != null) {
      result$
        ..add('EndTime')
        ..add(serializers.serialize(
          endTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}