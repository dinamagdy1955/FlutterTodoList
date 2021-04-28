import 'package:dio/dio.dart';
import 'package:todolist/models/todo.dart';



class TodoService{
  String url = "https://jsonplaceholder.typicode.com/todos";

  Future<List<Todo>> getTodo() async{
    List<Todo> todos = [];
    Response response = await Dio().get(url);
    var data = response.data;
    print(data);
    data.forEach((value) {
      todos.add(Todo.fromJson(value));
    });
    return todos;
  }
}