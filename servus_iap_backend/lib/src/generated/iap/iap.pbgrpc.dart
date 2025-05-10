//
//  Generated code. Do not modify.
//  source: iap/iap.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'iap.pb.dart' as $0;

export 'iap.pb.dart';

@$pb.GrpcServiceName('servusflutter.iap.PurchaseService')
class PurchaseServiceClient extends $grpc.Client {
  static final _$getHelloWorld =
      $grpc.ClientMethod<$0.HelloWorldRequest, $0.HelloWorldResponse>(
          '/servusflutter.iap.PurchaseService/GetHelloWorld',
          ($0.HelloWorldRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.HelloWorldResponse.fromBuffer(value));

  PurchaseServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.HelloWorldResponse> getHelloWorld(
      $0.HelloWorldRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getHelloWorld, request, options: options);
  }
}

@$pb.GrpcServiceName('servusflutter.iap.PurchaseService')
abstract class PurchaseServiceBase extends $grpc.Service {
  $core.String get $name => 'servusflutter.iap.PurchaseService';

  PurchaseServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.HelloWorldRequest, $0.HelloWorldResponse>(
        'GetHelloWorld',
        getHelloWorld_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HelloWorldRequest.fromBuffer(value),
        ($0.HelloWorldResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.HelloWorldResponse> getHelloWorld_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.HelloWorldRequest> $request) async {
    return getHelloWorld($call, await $request);
  }

  $async.Future<$0.HelloWorldResponse> getHelloWorld(
      $grpc.ServiceCall call, $0.HelloWorldRequest request);
}
