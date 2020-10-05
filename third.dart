import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class third extends StatefulWidget {
  @override
  _thirdState createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Thanking Page', style: TextStyle(
          fontSize: 30, color: Colors.white
        )),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ) ,
      body:
          Column(
            mainAxisAlignment: MainAxisAlignment.start ,
            children: <Widget>[
              Row(

                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 100, 0, 70),
                    child: Text('Thanks for using our app',
                      style: TextStyle(fontSize: 30, color: Colors.red),
                    ),
                  ),

                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(130, 10, 0, 0),
                    child:
                    RaisedButton.icon(
                        onPressed: () => exit(0),
                        icon: Icon(Icons.exit_to_app) ,
                        label: Text(
                          'Exit', style: TextStyle(
                          fontSize: 30,
                          color: Colors.black ,

                        ) ,
                        )
                    )
                    ,
                  )
                ],
              )
            ],
          )



    );



  }
}
