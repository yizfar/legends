import 'package:flutter/material.dart';
import '../screens/day_details_Page.dart';
class DayItem extends StatelessWidget {
  final String id;
  final String title;
  final String content;
  DayItem(this.id, this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return ListTile(
       trailing : Icon(
          Icons.arrow_forward,
          color: Color.fromARGB(255, 82, 33, 5),
          size: 30.0,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder:(ctx)=>DayDetailsPage(title,content)),);
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

