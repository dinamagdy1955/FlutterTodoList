import 'package:flutter/material.dart';

class TodoDetails extends StatefulWidget {
  final bool completed;
  final String title;
  final int id;
  TodoDetails({this.title,this.completed,this.id});
  @override
  _TodoDetailsState createState() => _TodoDetailsState();
}

class _TodoDetailsState extends State<TodoDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        actions: [
          InkWell(
            onTap: (){
              
            },
            child: Icon(Icons.search))
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
               Text(widget.completed? "Done":"To do",),
            ],
          ),
        ),
      ),
    );
  }
}