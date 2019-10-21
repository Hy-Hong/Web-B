import 'package:flutter/material.dart';
import 'package:hy/team/About.dart';
import 'package:hy/team/Contact.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: Icon(Icons.menu),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("World cup 2020",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.red,
              ),
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}