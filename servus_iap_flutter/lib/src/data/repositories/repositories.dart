import 'package:servus_iap_flutter/src/data/client/client_instance.dart';
import 'package:servus_iap_flutter/src/data/generated/iap/iap.pbgrpc.dart';
import 'package:servus_iap_flutter/src/data/interceptor/auth_interceptor.dart';
import 'package:servus_iap_flutter/src/data/interceptor/id_interceptor.dart';
import 'package:servus_iap_flutter/src/data/repositories/purchase_repository_impl.dart';

class Repositories {
  final PurchaseRepositoryImpl purchase;

  Repositories({
    required AuthInterceptor authInterceptor,
    required IdInterceptor idInterceptor,
    ClientInstance? client,
    PurchaseRepositoryImpl? purchaseRepository,
  }) : purchase =
           purchaseRepository ??
           PurchaseRepositoryImpl(
             purchaseServiceClient: PurchaseServiceClient(
               (client ?? ClientInstance()).channel,
               interceptors: [authInterceptor, idInterceptor],
             ),
           );
}
