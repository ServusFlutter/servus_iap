import 'package:servus_iap_flutter/src/data/client/client_instance.dart';
import 'package:servus_iap_flutter/src/data/interceptor/auth_interceptor.dart';
import 'package:servus_iap_flutter/src/data/interceptor/id_interceptor.dart';
import 'package:servus_iap_flutter/src/data/repositories/repositories.dart';

class ServusIapFlutter {
  final Repositories repositories;

  ServusIapFlutter({
    required String token,
    ClientInstance? clientInstance,
    required IdGetter? getUserId,
    required IdGetter? getDeviceId,
  }) : repositories = Repositories(
         authInterceptor: AuthInterceptor(token),
         idInterceptor: IdInterceptor(
           getUserId: getUserId ?? () async => null,
           getDeviceId: getDeviceId ?? () async => null,
         ),
         client: clientInstance,
       );

  Future<String> helloWorld() async {
    final result = await repositories.purchase.getHelloWorld();
    return result.message;
  }
}
