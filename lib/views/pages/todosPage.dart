import 'package:flutter/material.dart';
import 'package:todolist/models/todo.dart';
import 'package:todolist/services/todoService.dart';
import 'package:todolist/widgets/MyCard.dart';
class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  bool loading = true;
  List<Todo> todos = [];
  getData() async{
    todos = await TodoService().getTodo();
    loading = false;
    setState(() {
      
    });
  }


  void initState(){
    super.initState();
    getData();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Dos"),
      ),
      body: loading
      ? Center(child : CircularProgressIndicator(
            backgroundColor: Colors.lightBlue,
          ))
        :ListView.builder(
          itemCount: todos.length,
          itemBuilder: (BuildContext context ,int index){ 
            return MyCard(
            todo:todos[index],
            completed: todos[index].completed,
            title: todos[index].title,
            id:todos[index].id
          );
          })
        );
  }
}