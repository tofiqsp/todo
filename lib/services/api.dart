import 'package:todo/models/todo_model.dart';

abstract class Api {
  Future<List<Todo>> getTodos();
}

class FakeApi implements Api {
  @override
  Future<List<Todo>> getTodos() async {
    print('fetching data ...');
    await Future.delayed(Duration(seconds: 3));
    return List<Todo>.generate(
      10,
      (index) => Todo(
        title: 'Todo ' + (index + 1).toString(),
        id: index,
        description: 'This is description of Todo ' + (index + 1).toString(),
        status: Status.finished,
      ),
    );
  }
}

class HttpApi implements Api {
  @override
  Future<List<Todo>> getTodos() {
    return null;
  }
}
