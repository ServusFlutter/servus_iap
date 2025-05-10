import 'package:servus_iap_flutter/src/data/client/client_instance.dart';
import 'package:servus_iap_flutter/src/data/repositories/repositories.dart';

class ServusIapFlutter {
  final Repositories repositories;

  ServusIapFlutter({ClientInstance? clientInstance})
    : repositories = Repositories(client: clientInstance);

  Future<String> helloWorld() async {
    final result = await repositories.purchase.getHelloWorld();
    return result.message;
  }
}
