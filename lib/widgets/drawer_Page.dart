import 'package:flutter/material.dart';
import 'package:slichot3/models/menu.dart';

import 'menu_item.dart';

class MyDrawer extends StatelessWidget {
  final List<Menu> menulist = [
    Menu(id: 'd1', title: 'אודות', content: 'ראדעעעעעעעעעעעעעעעעעעעעעעעעעעעעעעעשי'),
    Menu(id: 'd1', title: 'תרומות', content: """
<p>
          
           <p>תודה מראש צוות טיבל.קום</p>"""),
    Menu(id: 'd1', title: 'עילויה', content: 'רכעגכגאשי'),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('תפריט'),
          ),
          ListTile(
       
        onTap: () {
          Navigator.of(context).pop();
        }, //to do func
        title: Text(
          'ראשי',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Color.fromARGB(255, 82, 33, 5),
          ),
        ),
        ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(5.0),
            itemCount: menulist.length,
            itemBuilder: (ctx, i) => Column(
              children: <Widget>[
                MenuItem(
                    menulist[i].id, menulist[i].title, menulist[i].content),
                Divider(height: 10.0, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ListTile(
//               title: Text('ראשי'),
//               onTap:() {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => DayOverViewScreen()),
//                   );
//                 },
//               ),
//               ListTile(
//               title: Text('שני?'),
//               onTap:() {

//                 },
//               )
