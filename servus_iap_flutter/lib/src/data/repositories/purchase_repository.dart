import 'package:servus_iap_flutter/src/data/client/client_instance.dart';
import 'package:servus_iap_flutter/src/data/generated/iap/iap.pbgrpc.dart';

class PurchaseRepository {
  final PurchaseServiceClient _purchaseServiceClient;

  PurchaseRepository({required ClientInstance client})
    : _purchaseServiceClient = PurchaseServiceClient(client.channel);

  Future<HelloWorldResponse> getHelloWorld() async {
    return _purchaseServiceClient.getHelloWorld(HelloWorldRequest());
  }
}
