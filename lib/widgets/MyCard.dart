import 'package:flutter/material.dart';
import 'package:todolist/models/todo.dart';
import 'package:todolist/views/pages/todoDetails.dart';

class MyCard extends StatefulWidget {
  final Todo todo;
  final String title;
  final bool completed;
  final int id;
  MyCard({this.todo , this.title,this.completed ,this.id});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>
          TodoDetails(title:widget.title, completed:widget.completed)
        ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title??"",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Text(
                      widget.completed? "Done":"To do",
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}