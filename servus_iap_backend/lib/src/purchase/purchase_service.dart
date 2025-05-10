import 'package:servus_iap_backend/src/generated/iap/iap.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class PurchaseService extends PurchaseServiceBase {
  @override
  Future<HelloWorldResponse> getHelloWorld(
    ServiceCall call,
    HelloWorldRequest request,
  ) async {
    return HelloWorldResponse(message: "test");
  }
}
