// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_object_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetObjectRequest extends GetObjectRequest {
  @override
  final String bucket;
  @override
  final String? ifMatch;
  @override
  final DateTime? ifModifiedSince;
  @override
  final String? ifNoneMatch;
  @override
  final DateTime? ifUnmodifiedSince;
  @override
  final String key;
  @override
  final String? range;
  @override
  final String? responseCacheControl;
  @override
  final String? responseContentDisposition;
  @override
  final String? responseContentEncoding;
  @override
  final String? responseContentLanguage;
  @override
  final String? responseContentType;
  @override
  final DateTime? responseExpires;
  @override
  final String? versionId;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final _i3.RequestPayer? requestPayer;
  @override
  final int? partNumber;
  @override
  final String? expectedBucketOwner;
  @override
  final _i4.ChecksumMode? checksumMode;

  factory _$GetObjectRequest(
          [void Function(GetObjectRequestBuilder)? updates]) =>
      (new GetObjectRequestBuilder()..update(updates))._build();

  _$GetObjectRequest._(
      {required this.bucket,
      this.ifMatch,
      this.ifModifiedSince,
      this.ifNoneMatch,
      this.ifUnmodifiedSince,
      required this.key,
      this.range,
      this.responseCacheControl,
      this.responseContentDisposition,
      this.responseContentEncoding,
      this.responseContentLanguage,
      this.responseContentType,
      this.responseExpires,
      this.versionId,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5,
      this.requestPayer,
      this.partNumber,
      this.expectedBucketOwner,
      this.checksumMode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetObjectRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(key, r'GetObjectRequest', 'key');
  }

  @override
  GetObjectRequest rebuild(void Function(GetObjectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectRequestBuilder toBuilder() =>
      new GetObjectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectRequest &&
        bucket == other.bucket &&
        ifMatch == other.ifMatch &&
        ifModifiedSince == other.ifModifiedSince &&
        ifNoneMatch == other.ifNoneMatch &&
        ifUnmodifiedSince == other.ifUnmodifiedSince &&
        key == other.key &&
        range == other.range &&
        responseCacheControl == other.responseCacheControl &&
        responseContentDisposition == other.responseContentDisposition &&
        responseContentEncoding == other.responseContentEncoding &&
        responseContentLanguage == other.responseContentLanguage &&
        responseContentType == other.responseContentType &&
        responseExpires == other.responseExpires &&
        versionId == other.versionId &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        requestPayer == other.requestPayer &&
        partNumber == other.partNumber &&
        expectedBucketOwner == other.expectedBucketOwner &&
        checksumMode == other.checksumMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, ifMatch.hashCode);
    _$hash = $jc(_$hash, ifModifiedSince.hashCode);
    _$hash = $jc(_$hash, ifNoneMatch.hashCode);
    _$hash = $jc(_$hash, ifUnmodifiedSince.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, range.hashCode);
    _$hash = $jc(_$hash, responseCacheControl.hashCode);
    _$hash = $jc(_$hash, responseContentDisposition.hashCode);
    _$hash = $jc(_$hash, responseContentEncoding.hashCode);
    _$hash = $jc(_$hash, responseContentLanguage.hashCode);
    _$hash = $jc(_$hash, responseContentType.hashCode);
    _$hash = $jc(_$hash, responseExpires.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, sseCustomerAlgorithm.hashCode);
    _$hash = $jc(_$hash, sseCustomerKey.hashCode);
    _$hash = $jc(_$hash, sseCustomerKeyMd5.hashCode);
    _$hash = $jc(_$hash, requestPayer.hashCode);
    _$hash = $jc(_$hash, partNumber.hashCode);
    _$hash = $jc(_$hash, expectedBucketOwner.hashCode);
    _$hash = $jc(_$hash, checksumMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetObjectRequestBuilder
    implements Builder<GetObjectRequest, GetObjectRequestBuilder> {
  _$GetObjectRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _ifMatch;
  String? get ifMatch => _$this._ifMatch;
  set ifMatch(String? ifMatch) => _$this._ifMatch = ifMatch;

  DateTime? _ifModifiedSince;
  DateTime? get ifModifiedSince => _$this._ifModifiedSince;
  set ifModifiedSince(DateTime? ifModifiedSince) =>
      _$this._ifModifiedSince = ifModifiedSince;

  String? _ifNoneMatch;
  String? get ifNoneMatch => _$this._ifNoneMatch;
  set ifNoneMatch(String? ifNoneMatch) => _$this._ifNoneMatch = ifNoneMatch;

  DateTime? _ifUnmodifiedSince;
  DateTime? get ifUnmodifiedSince => _$this._ifUnmodifiedSince;
  set ifUnmodifiedSince(DateTime? ifUnmodifiedSince) =>
      _$this._ifUnmodifiedSince = ifUnmodifiedSince;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _range;
  String? get range => _$this._range;
  set range(String? range) => _$this._range = range;

  String? _responseCacheControl;
  String? get responseCacheControl => _$this._responseCacheControl;
  set responseCacheControl(String? responseCacheControl) =>
      _$this._responseCacheControl = responseCacheControl;

  String? _responseContentDisposition;
  String? get responseContentDisposition => _$this._responseContentDisposition;
  set responseContentDisposition(String? responseContentDisposition) =>
      _$this._responseContentDisposition = responseContentDisposition;

  String? _responseContentEncoding;
  String? get responseContentEncoding => _$this._responseContentEncoding;
  set responseContentEncoding(String? responseContentEncoding) =>
      _$this._responseContentEncoding = responseContentEncoding;

  String? _responseContentLanguage;
  String? get responseContentLanguage => _$this._responseContentLanguage;
  set responseContentLanguage(String? responseContentLanguage) =>
      _$this._responseContentLanguage = responseContentLanguage;

  String? _responseContentType;
  String? get responseContentType => _$this._responseContentType;
  set responseContentType(String? responseContentType) =>
      _$this._responseContentType = responseContentType;

  DateTime? _responseExpires;
  DateTime? get responseExpires => _$this._responseExpires;
  set responseExpires(DateTime? responseExpires) =>
      _$this._responseExpires = responseExpires;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  String? _sseCustomerAlgorithm;
  String? get sseCustomerAlgorithm => _$this._sseCustomerAlgorithm;
  set sseCustomerAlgorithm(String? sseCustomerAlgorithm) =>
      _$this._sseCustomerAlgorithm = sseCustomerAlgorithm;

  String? _sseCustomerKey;
  String? get sseCustomerKey => _$this._sseCustomerKey;
  set sseCustomerKey(String? sseCustomerKey) =>
      _$this._sseCustomerKey = sseCustomerKey;

  String? _sseCustomerKeyMd5;
  String? get sseCustomerKeyMd5 => _$this._sseCustomerKeyMd5;
  set sseCustomerKeyMd5(String? sseCustomerKeyMd5) =>
      _$this._sseCustomerKeyMd5 = sseCustomerKeyMd5;

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  int? _partNumber;
  int? get partNumber => _$this._partNumber;
  set partNumber(int? partNumber) => _$this._partNumber = partNumber;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  _i4.ChecksumMode? _checksumMode;
  _i4.ChecksumMode? get checksumMode => _$this._checksumMode;
  set checksumMode(_i4.ChecksumMode? checksumMode) =>
      _$this._checksumMode = checksumMode;

  GetObjectRequestBuilder() {
    GetObjectRequest._init(this);
  }

  GetObjectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _ifMatch = $v.ifMatch;
      _ifModifiedSince = $v.ifModifiedSince;
      _ifNoneMatch = $v.ifNoneMatch;
      _ifUnmodifiedSince = $v.ifUnmodifiedSince;
      _key = $v.key;
      _range = $v.range;
      _responseCacheControl = $v.responseCacheControl;
      _responseContentDisposition = $v.responseContentDisposition;
      _responseContentEncoding = $v.responseContentEncoding;
      _responseContentLanguage = $v.responseContentLanguage;
      _responseContentType = $v.responseContentType;
      _responseExpires = $v.responseExpires;
      _versionId = $v.versionId;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _requestPayer = $v.requestPayer;
      _partNumber = $v.partNumber;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _checksumMode = $v.checksumMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetObjectRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectRequest;
  }

  @override
  void update(void Function(GetObjectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectRequest build() => _build();

  _$GetObjectRequest _build() {
    final _$result = _$v ??
        new _$GetObjectRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetObjectRequest', 'bucket'),
            ifMatch: ifMatch,
            ifModifiedSince: ifModifiedSince,
            ifNoneMatch: ifNoneMatch,
            ifUnmodifiedSince: ifUnmodifiedSince,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'GetObjectRequest', 'key'),
            range: range,
            responseCacheControl: responseCacheControl,
            responseContentDisposition: responseContentDisposition,
            responseContentEncoding: responseContentEncoding,
            responseContentLanguage: responseContentLanguage,
            responseContentType: responseContentType,
            responseExpires: responseExpires,
            versionId: versionId,
            sseCustomerAlgorithm: sseCustomerAlgorithm,
            sseCustomerKey: sseCustomerKey,
            sseCustomerKeyMd5: sseCustomerKeyMd5,
            requestPayer: requestPayer,
            partNumber: partNumber,
            expectedBucketOwner: expectedBucketOwner,
            checksumMode: checksumMode);
    replace(_$result);
    return _$result;
  }
}

class _$GetObjectRequestPayload extends GetObjectRequestPayload {
  factory _$GetObjectRequestPayload(
          [void Function(GetObjectRequestPayloadBuilder)? updates]) =>
      (new GetObjectRequestPayloadBuilder()..update(updates))._build();

  _$GetObjectRequestPayload._() : super._();

  @override
  GetObjectRequestPayload rebuild(
          void Function(GetObjectRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetObjectRequestPayloadBuilder toBuilder() =>
      new GetObjectRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetObjectRequestPayload;
  }

  @override
  int get hashCode {
    return 267380927;
  }
}

class GetObjectRequestPayloadBuilder
    implements
        Builder<GetObjectRequestPayload, GetObjectRequestPayloadBuilder> {
  _$GetObjectRequestPayload? _$v;

  GetObjectRequestPayloadBuilder() {
    GetObjectRequestPayload._init(this);
  }

  @override
  void replace(GetObjectRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetObjectRequestPayload;
  }

  @override
  void update(void Function(GetObjectRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetObjectRequestPayload build() => _build();

  _$GetObjectRequestPayload _build() {
    final _$result = _$v ?? new _$GetObjectRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint