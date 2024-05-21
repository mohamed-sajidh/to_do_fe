import 'package:flutter/material.dart';
import 'package:to_do_fe/feature/todo_screen/widgets/todo_view_page.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "To Do List",
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
        )),
      ),

      // body: ListView(
      //   children:  <Widget>[
      //     ListTile(
      //        leading: CircleAvatar(child: Text('A')),
      //       title: Text('Headline'),
      //       subtitle: Text('Supporting text'),
      //       trailing: InkWell(child: Icon(Icons.favorite_rounded), onTap: () {
      //         print("haiiii");
      //       },),
      //     )
      //   ],
      // )

      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            5, 
            (index) => Column(
            children: [
              SizedBox(height: 5,),
              TodoViewPage()
            ],
          ))
        )
      )
    );
  }
}
