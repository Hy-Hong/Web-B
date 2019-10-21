
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter_speed_dial/flutter_speed_dial.dart'; // import from file pubspec.yaml

void main() => runApp(Basic()); // After write this line you must click on key 'S' for list main codes
class Basic extends StatefulWidget {
  @override
  _BasicState createState() => _BasicState();
}

class _BasicState extends State<Basic> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Using to hide debug on the top of the appBar at right
      home: DefaultTabController(
        length: 3, //Used to create three pages
        child: Scaffold(
        appBar: AppBar( //Used to create appBar
          title: Text("Basic Mobile Apps"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.share, size: 25.0,color: Colors.white,),),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.photo_album),),
              Tab(icon: Icon(Icons.phone),),
              Tab(icon: Icon(Icons.group),),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    radius:60.0,
                    backgroundImage: NetworkImage('https://images.cdn.fourfourtwo.com/sites/fourfourtwo.com/files/styles/image_landscape/public/ronaldo_ballon_0.jpg?itok=Qr0xZIJv',
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.red[900],),
                
              ),
              ListTile(
                title: Text("avatar@gmail.com"),
                leading: Icon(Icons.email),
              ),
              ListTile(
                title: Text("Facebook"),
                leading: Icon(Icons.face),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Image.network('https://imagevars.gulfnews.com/2019/09/11/190911-Ronaldo_16d1d51f043_large.jpg',
            fit: BoxFit.cover,
            ),
            Image.network('https://imagevars.gulfnews.com/2019/06/20/Argentina-s-Lionel-Messi_16b7583ee4c_large.jpg',
            fit: BoxFit.cover,
            ),
            Image.network('https://en.as.com/en/imagenes/2018/12/26/football/1545831723_756204_noticia_normal.jpg',
            fit: BoxFit.cover,
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.group_work),color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.flag),color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close, 
          overlayColor: Colors.teal,
          overlayOpacity: 0.4,
          children: [
            SpeedDialChild(
              child: Icon(Icons.share),backgroundColor: Colors.orange,
              label: "Sharing",labelBackgroundColor: Colors.orange,
              labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            SpeedDialChild(
              child: Icon(Icons.fastfood),backgroundColor: Colors.purple,
              label: "Foods",labelBackgroundColor: Colors.purple,
              labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            SpeedDialChild(
              child: Icon(Icons.favorite),backgroundColor: Colors.pink,
              label: "Favorite",labelBackgroundColor: Colors.pink,
              labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

  


  
