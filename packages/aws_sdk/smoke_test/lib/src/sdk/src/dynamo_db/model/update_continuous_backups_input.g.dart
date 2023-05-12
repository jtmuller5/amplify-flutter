// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_continuous_backups_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateContinuousBackupsInput extends UpdateContinuousBackupsInput {
  @override
  final String tableName;
  @override
  final _i3.PointInTimeRecoverySpecification pointInTimeRecoverySpecification;

  factory _$UpdateContinuousBackupsInput(
          [void Function(UpdateContinuousBackupsInputBuilder)? updates]) =>
      (new UpdateContinuousBackupsInputBuilder()..update(updates))._build();

  _$UpdateContinuousBackupsInput._(
      {required this.tableName, required this.pointInTimeRecoverySpecification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'UpdateContinuousBackupsInput', 'tableName');
    BuiltValueNullFieldError.checkNotNull(pointInTimeRecoverySpecification,
        r'UpdateContinuousBackupsInput', 'pointInTimeRecoverySpecification');
  }

  @override
  UpdateContinuousBackupsInput rebuild(
          void Function(UpdateContinuousBackupsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateContinuousBackupsInputBuilder toBuilder() =>
      new UpdateContinuousBackupsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateContinuousBackupsInput &&
        tableName == other.tableName &&
        pointInTimeRecoverySpecification ==
            other.pointInTimeRecoverySpecification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jc(_$hash, pointInTimeRecoverySpecification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateContinuousBackupsInputBuilder
    implements
        Builder<UpdateContinuousBackupsInput,
            UpdateContinuousBackupsInputBuilder> {
  _$UpdateContinuousBackupsInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  _i3.PointInTimeRecoverySpecificationBuilder?
      _pointInTimeRecoverySpecification;
  _i3.PointInTimeRecoverySpecificationBuilder
      get pointInTimeRecoverySpecification =>
          _$this._pointInTimeRecoverySpecification ??=
              new _i3.PointInTimeRecoverySpecificationBuilder();
  set pointInTimeRecoverySpecification(
          _i3.PointInTimeRecoverySpecificationBuilder?
              pointInTimeRecoverySpecification) =>
      _$this._pointInTimeRecoverySpecification =
          pointInTimeRecoverySpecification;

  UpdateContinuousBackupsInputBuilder() {
    UpdateContinuousBackupsInput._init(this);
  }

  UpdateContinuousBackupsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _pointInTimeRecoverySpecification =
          $v.pointInTimeRecoverySpecification.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateContinuousBackupsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateContinuousBackupsInput;
  }

  @override
  void update(void Function(UpdateContinuousBackupsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateContinuousBackupsInput build() => _build();

  _$UpdateContinuousBackupsInput _build() {
    _$UpdateContinuousBackupsInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateContinuousBackupsInput._(
              tableName: BuiltValueNullFieldError.checkNotNull(
                  tableName, r'UpdateContinuousBackupsInput', 'tableName'),
              pointInTimeRecoverySpecification:
                  pointInTimeRecoverySpecification.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pointInTimeRecoverySpecification';
        pointInTimeRecoverySpecification.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateContinuousBackupsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint