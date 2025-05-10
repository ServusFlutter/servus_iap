import 'package:servus_iap_flutter/src/data/client/client_instance.dart';
import 'package:servus_iap_flutter/src/data/repositories/purchase_repository.dart';

class Repositories {
  final PurchaseRepository purchase;

  Repositories({ClientInstance? client, PurchaseRepository? purchaseRepository})
    : purchase =
          purchaseRepository ??
          PurchaseRepository(client: client ?? ClientInstance());
}
