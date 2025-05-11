import 'package:servus_iap_flutter/src/data/generated/iap/iap.pbgrpc.dart';

class PurchaseRepositoryImpl {
  final PurchaseServiceClient purchaseServiceClient;

  PurchaseRepositoryImpl({required this.purchaseServiceClient});

  Future<HelloWorldResponse> getHelloWorld() async {
    return purchaseServiceClient.getHelloWorld(
      HelloWorldRequest(),
    );
  }
}
