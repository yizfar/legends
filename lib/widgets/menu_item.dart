import 'package:flutter/material.dart';
import 'package:slichot3/screens/menu_details_page.dart';
class MenuItem extends StatelessWidget {
  final String id;
  final String title;
  final String content;
  MenuItem(this.id, this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return ListTile(
       
        onTap: () {
          Navigator.pop(context);//return to the firs page and not back to drawer
          Navigator.of(context).push(MaterialPageRoute(builder:(ctx)=>MenuDetailsPage (title,content)),);
        }, //to do func
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Color.fromARGB(255, 82, 33, 5),
          ),
        ),
        );
  }
}

