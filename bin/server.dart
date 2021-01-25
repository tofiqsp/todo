import 'package:grpc/grpc.dart';
import 'package:todo/my_grpc.dart';

class TodoService extends TodoServiceBase {
  @override
  Future<TodoResponse> getTodos(ServiceCall call, TodoRequest request) async {
    final todoList = todos
        .map((todo) => Todo.fromJson(
              '{"1": ${todo['id']}, "2": "${todo['title']}"}',
            ))
        .toList();
    return TodoResponse()..todos.addAll(todoList);
  }
}

void main() async {
  final server = Server([TodoService()]);
  await server.serve(port: 1152);
  print('Server is listening on port ${server.port}');
}
