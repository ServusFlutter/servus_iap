import 'package:grpc/grpc.dart';
import 'package:servus_iap_backend/src/generated/iap/iap.pbgrpc.dart';

class PurchaseService extends PurchaseServiceBase {
  @override
  Future<HelloWorldResponse> getHelloWorld(
    ServiceCall call,
    HelloWorldRequest request,
  ) async {
    final token = call.clientMetadata?["authorization"];
    print("Token: $token");
    return HelloWorldResponse(message: "test");
  }
}
