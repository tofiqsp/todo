import 'package:grpc/grpc.dart';
import 'package:todo/my_grpc.dart';

void main() async {
  final channel = ClientChannel(
    'localhost',
    port: 1152,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
  final stub = TodoServiceClient(channel);
  var response = await stub.getTodos(TodoRequest());
  print('Response Recieved: ${response.writeToJson()}');
  await channel.shutdown();
}
