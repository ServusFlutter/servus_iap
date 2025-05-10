import 'package:grpc/grpc.dart';

class ClientInstance {
  final ClientChannel channel;

  ClientInstance({String host = 'localhost', int port = 9876})
    : channel = ClientChannel(
        host,
        port: port,
        options: ChannelOptions(
          credentials: const ChannelCredentials.insecure(),
          codecRegistry: CodecRegistry(
            codecs: const [GzipCodec(), IdentityCodec()],
          ),
        ),
      );
}
