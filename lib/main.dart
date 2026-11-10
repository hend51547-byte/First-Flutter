
////////////first screen///////

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Settings"),
        actions: [Icon(Icons.list)],
        backgroundColor: Colors.white,
        shadowColor: Colors.black54,
      ),
      body:Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [
        Text("Do you want to save changes ?",style:TextStyle(fontSize: 25,fontWeight:FontWeight.bold)),
        SizedBox(height: 15),
        Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment:CrossAxisAlignment.center ,children: [TextButton(onPressed: (){}, child: Text("Later")),SizedBox(width:15),
        OutlinedButton(onPressed: (){}, child:Text("cancel")),SizedBox(width:15),
        ElevatedButton(onPressed: (){}, child: Text("Save"),style:ElevatedButton.styleFrom(backgroundColor: Colors.blue)),

        ],)
        
      ],),),
      bottomNavigationBar:BottomNavigationBar(items: [
        BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon:Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon:Icon(Icons.person_off_outlined),label:"Profile")
      ]) ,
    );
  }
}
///////////second screen //////
///
///
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: firstScreen());
  }
}

class firstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Shop",
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.normal,
            fontSize: 20.0,
            fontWeight: FontWeight(500),
          ),
        ),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),

        actions: [
          Icon(Icons.shopping_cart, color: Colors.white),
          Icon(Icons.notification_add, color: Colors.white),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_off_outlined),
            label: "profile",
          ),
        ],
      ),
      body:Center(child:
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ 
          Text("Welcome back!",style:TextStyle(
            fontSize: 30,fontWeight:FontWeight.bold
          ) ),
          Text("Find the best Products for you"),
 SizedBox(height: 13)
   ElevatedButton(onPressed: (){}, child: Text("Shop now",style:TextStyle(color:Colors.white,  )),style:ElevatedButton.styleFrom(backgroundColor:Colors.blue)),
   SizedBox(height: 13),
   OutlinedButton(onPressed: (){}, child: Text("view offers")),
   SizedBox(height: 13),
   TextButton(onPressed: (){}, child: Text("Skip")),

         ]                              
          ,
      ),
    ));
  }
}
///
///
//////////Third screen///////
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(backgroundColor: Colors.cyan,child: Text("A"),),
       title: Column(children: [
        Text("Ahmed Ali",style: TextStyle(fontSize: 25)),
        Text("Online")
       ],),
        
        actions: [Icon(Icons.call), Icon(Icons.video_call)],
      ),

    body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
      Column(mainAxisAlignment: MainAxisAlignment.center,children: [
       Text("120",style:TextStyle(fontSize: 40) ),
       Text("Followers",style: TextStyle(fontSize: 25)),
       ElevatedButton(onPressed: (){}, child:Text("Follow"),style: ElevatedButton.styleFrom(backgroundColor:Colors.blueAccent ), )
      ],),SizedBox(width: 100),
      Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Text("80",style:TextStyle(fontSize: 40)),
        Text("Following",style:TextStyle(fontSize:25 )),
        OutlinedButton(onPressed: (){}, child:Text("Message"),style:OutlinedButton.styleFrom(iconSize:30 ) ,)

      ],)
    ],),
    bottomNavigationBar:BottomNavigationBar(items: [
      BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home"),
      BottomNavigationBarItem(icon:Icon(Icons.search),label: "Search"),
      BottomNavigationBarItem(icon:Icon(Icons.person_off_outlined),label:"Profile")
    ])
    );
  }
}
