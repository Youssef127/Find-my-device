

import 'package:trail/second.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trail/third.dart';

void main() => runApp(MaterialApp(
  home: app() ,
  routes: {

    '/second': (context) => second(),
    '/third' : (context) => third() ,
  } ,
) ,
);

class app extends StatefulWidget {

  @override
  _appState createState() => _appState();
}
var _name;
var _number;
var _email;


class _appState extends State<app> {
  TextEditingController inputcontroller = new TextEditingController();
  TextEditingController inputcontroller1 = new TextEditingController();
  TextEditingController inputcontroller2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false ,
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Fill the next fields', style: TextStyle(
            fontSize: 30, color: Colors.white,
          )),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center  ,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('lib/assets/photo-1.jpg')   ,
              radius: 50 ,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center ,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20,10, 0, 5) ,
                    child: Text ('Name:', style: TextStyle(fontSize: 30 ,color: Colors.red  ),
                    ),
                  ),

                ]),
            Container(
                padding: EdgeInsets.fromLTRB(0,15, 0, 15) ,
                child: new TextField(
                  controller: inputcontroller ,
                  decoration: InputDecoration(
                      fillColor: Colors.white ,
                      filled: true ,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero

                      ) ,
                      hintText: 'Write your name', hintStyle: TextStyle(
                      color: Colors.red
                  )
                  ) ,
                )
            ),

            Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10,7.5, 0, 20) ,
                    child: Text ('Telephone Number:', style: TextStyle(fontSize: 25 ,color: Colors.red  ),
                    ),
                  ),

                ]),
            Container(
                padding: EdgeInsets.fromLTRB(0,0, 0,15) ,
                child: new TextField(
                  controller: inputcontroller1 ,
                  keyboardType: TextInputType.number ,
                  decoration: InputDecoration(
                      fillColor: Colors.white ,
                      filled: true ,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero


                      ) ,
                      hintText: 'Write your phone number', hintStyle: TextStyle(
                      color: Colors.red
                  )
                  ) ,
                )
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15) ,
                  child: Text ('Email Adress:', style: TextStyle(fontSize: 25 ,color: Colors.red  ),
                  ),
                ),

              ],
            ),
            Container(
                padding: EdgeInsets.fromLTRB(0,5, 0, 25) ,
                child: new TextField(
                  controller: inputcontroller2 ,
                  keyboardType: TextInputType.emailAddress ,
                  decoration: InputDecoration(
                      fillColor: Colors.white ,
                      filled: true ,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero


                      ) ,
                      hintText: 'Write your email adress', hintStyle: TextStyle(
                      color: Colors.red
                  )
                  ) ,
                )
            ),
            RaisedButton.icon (
              onPressed: (){
                Navigator.pushNamed(context, '/second') ;
              } ,
              color: Colors.white ,
              icon: Icon(Icons.add_location) ,
              label: Text('Click to add your location' , style: TextStyle(fontSize: 15 , color: Colors.blue ) ,) ,
            ),
          ],
        )

    );
  }

}
