import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class MenuDetailsPage  extends StatelessWidget {
   final String title;
  final String content;

  MenuDetailsPage(this.title, this.content);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(title),
        
      ),
      body:  Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
          
            child: Card(
              
                        child: Html(
                data: content,
                
                
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}