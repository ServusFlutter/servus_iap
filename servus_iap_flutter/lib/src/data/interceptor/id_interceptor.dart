import 'dart:async';

import 'package:grpc/grpc.dart';

typedef IdGetter = FutureOr<String?> Function();

class IdInterceptor extends ClientInterceptor {
  final IdGetter getUserId;
  final IdGetter getDeviceId;

  IdInterceptor({required this.getUserId, required this.getDeviceId});

  Future<void> _userIdProvider(Map<String, String> metadata, String uri) async {
    final userId = await getUserId();
    if (userId != null) {
      metadata['User-Id'] = userId;
    }
  }

  Future<void> _deviceIdProvider(
    Map<String, String> metadata,
    String uri,
  ) async {
    final deviceId = await getDeviceId();
    if (deviceId != null) {
      metadata['Device-Id'] = deviceId;
    }
  }

  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    ClientUnaryInvoker<Q, R> invoker,
  ) {
    return invoker(
      method,
      request,
      options.mergedWith(
        CallOptions(providers: [_userIdProvider, _deviceIdProvider]),
      ),
    );
  }
}
