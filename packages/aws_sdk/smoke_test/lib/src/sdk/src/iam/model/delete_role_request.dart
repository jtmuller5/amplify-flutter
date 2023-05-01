// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.delete_role_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_role_request.g.dart';

abstract class DeleteRoleRequest
    with _i1.HttpInput<DeleteRoleRequest>, _i2.AWSEquatable<DeleteRoleRequest>
    implements Built<DeleteRoleRequest, DeleteRoleRequestBuilder> {
  factory DeleteRoleRequest({required String roleName}) {
    return _$DeleteRoleRequest._(roleName: roleName);
  }

  factory DeleteRoleRequest.build(
      [void Function(DeleteRoleRequestBuilder) updates]) = _$DeleteRoleRequest;

  const DeleteRoleRequest._();

  factory DeleteRoleRequest.fromRequest(
    DeleteRoleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteRoleRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteRoleRequestBuilder b) {}

  /// The name of the role to delete.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;
  @override
  DeleteRoleRequest getPayload() => this;
  @override
  List<Object?> get props => [roleName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteRoleRequest');
    helper.add(
      'roleName',
      roleName,
    );
    return helper.toString();
  }
}

class DeleteRoleRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteRoleRequest> {
  const DeleteRoleRequestAwsQuerySerializer() : super('DeleteRoleRequest');

  @override
  Iterable<Type> get types => const [
        DeleteRoleRequest,
        _$DeleteRoleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteRoleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteRoleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DeleteRoleRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteRoleRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        payload.roleName,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}