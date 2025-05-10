import 'package:servus_iap_backend/src/purchase/purchase_service.dart';
import 'package:grpc/grpc.dart';

Future<void> main() async {
  final port = 9876;

  final server = Server.create(
    services: [
      PurchaseService(),
    ],
    interceptors: <Interceptor>[
      (call, method) async {
        print(method.name);
        return null;
      }
    ],
    codecRegistry: CodecRegistry(
      codecs: const [
        GzipCodec(),
        IdentityCodec(),
      ],
    ),
  );
  await server.serve(port: port);
  print('Server listening on port ${server.port}...');
}
