import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:html/dom.dart' as dom;
class DayDetailsPage extends StatelessWidget {
  final String title;
  final String content;

  DayDetailsPage(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: new Center(
        child: SingleChildScrollView(
        
          child: Html(
        
            data: content,
            customTextStyle: (dom.Node node, TextStyle baseStyle) {
                  return baseStyle.merge(TextStyle(height: 1.5, fontSize: 18.0));
                  }
            
          ),
        ),
      ),
      
      floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FloatingActionButton(
                 // mini: true,
                  backgroundColor: Colors.white54,
                  heroTag: 'unq1',
                  onPressed:(){},
                  child: Icon(Icons.zoom_in),
                ),
                FloatingActionButton(
                  heroTag: 'unq2',
                  mini: true,
                  backgroundColor: Colors.white70,
                  onPressed: () {},
                  child: Icon(Icons.clear),
               
                ),
                FloatingActionButton(
                  heroTag: 'unq3',
                  //mini: true,
                  
                  onPressed: () {var baseStyle;
                  baseStyle.merge(TextStyle(height: 2, fontSize: 2));},
                  child: Icon(Icons.zoom_out),
                ),
              ],
            ),
          )
      
    
     
      // ),
      

    
    );
  }
}
