//
//  Generated code. Do not modify.
//  source: iap/iap.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class HelloWorldRequest extends $pb.GeneratedMessage {
  factory HelloWorldRequest() => create();

  HelloWorldRequest._() : super();

  factory HelloWorldRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory HelloWorldRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HelloWorldRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'servusflutter.iap'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HelloWorldRequest clone() => HelloWorldRequest()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HelloWorldRequest copyWith(void Function(HelloWorldRequest) updates) =>
      super.copyWith((message) => updates(message as HelloWorldRequest))
          as HelloWorldRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloWorldRequest create() => HelloWorldRequest._();

  HelloWorldRequest createEmptyInstance() => create();

  static $pb.PbList<HelloWorldRequest> createRepeated() =>
      $pb.PbList<HelloWorldRequest>();

  @$core.pragma('dart2js:noInline')
  static HelloWorldRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HelloWorldRequest>(create);
  static HelloWorldRequest? _defaultInstance;
}

class HelloWorldResponse extends $pb.GeneratedMessage {
  factory HelloWorldResponse({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }

  HelloWorldResponse._() : super();

  factory HelloWorldResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory HelloWorldResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HelloWorldResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'servusflutter.iap'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HelloWorldResponse clone() => HelloWorldResponse()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HelloWorldResponse copyWith(void Function(HelloWorldResponse) updates) =>
      super.copyWith((message) => updates(message as HelloWorldResponse))
          as HelloWorldResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloWorldResponse create() => HelloWorldResponse._();

  HelloWorldResponse createEmptyInstance() => create();

  static $pb.PbList<HelloWorldResponse> createRepeated() =>
      $pb.PbList<HelloWorldResponse>();

  @$core.pragma('dart2js:noInline')
  static HelloWorldResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HelloWorldResponse>(create);
  static HelloWorldResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);

  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);

  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
