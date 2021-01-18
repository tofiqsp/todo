import 'package:flutter/material.dart';
import 'package:todo/locator.dart';
import 'package:todo/models/todo_model.dart';
import 'package:todo/services/api.dart';

class Discovery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Api api = locator<Api>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo app'),
      ),
      body: FutureBuilder<List<Todo>>(
        builder: (context, snapshot) => snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    snapshot.data[index].title,
                  ),
                  subtitle: Text(snapshot.data[index].description),
                  leading: CircleAvatar(
                    child: Text(index.toString()),
                  ),
                ),
              )
            : Center(
                child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Fetching data ...',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CircularProgressIndicator(),
                ],
              )),
        future: api.getTodos(),
      ),
    );
  }
}
