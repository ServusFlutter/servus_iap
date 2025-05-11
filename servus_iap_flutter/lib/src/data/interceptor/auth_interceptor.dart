import 'package:grpc/grpc.dart';

class AuthInterceptor extends ClientInterceptor {
  final String token;

  AuthInterceptor(this.token);

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
        CallOptions(metadata: {"Authorization": "Bearer $token"}),
      ),
    );
  }
}
