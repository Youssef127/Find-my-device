import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class second extends StatefulWidget {

  @override
  _secondState createState() => _secondState();
}
var _latitude;
var _longitude;

class _secondState extends State<second> {

  Future <void> _launched;
  String _launchURL = 'https://www.where-am-i.me' ;
  Future <void> _launchInBrowser (String url) async {
    if (await canLaunch (url)) {
      await launch(url, forceSafariVC: true,forceWebView: true,
          headers:<String, String> { 'header_key' : 'header_value' } );

    }else {
      throw 'could not launch $url';
    }
  }
  Future <void> _launchInApp (String url) async {
    if (await canLaunch (url)) {
      await launch(url, forceSafariVC: true,forceWebView: true,
          headers:<String, String> { 'header_key' : 'header_value' } );

    }else {
      throw 'could not launch $url';
    }
  }
  TextEditingController inputcontroller3 = new TextEditingController();
  TextEditingController inputcontroller4 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black ,


        appBar: AppBar(
          title: Text('Choose your location', style: TextStyle(
            fontSize: 30, color: Colors.white,
          )),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          elevation: 0,
        ),
        body:

        Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
            Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 7.5, 0, 20),
                    child: Text('Location Latitude:',
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                  ),

                ]),
            Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: new TextField(
                  controller: inputcontroller3 ,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero


                      ),
                      hintText: 'Write the latitude ',
                      hintStyle: TextStyle(
                          color: Colors.red
                      )
                  ),
                )
            ),
            Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 7.5, 0, 20),
                    child: Text('Location Longitude',
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                  ),

                ]),
            Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: new TextField(
                  controller: inputcontroller4,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero


                      ),
                      hintText: 'Write the longitude',
                      hintStyle: TextStyle(
                          color: Colors.red
                      )
                  ),
                )
            ),

            RaisedButton.icon(
              onPressed: () {
                _launchInApp(_launchURL);
              },
              color: Colors.white,
              icon: Icon(Icons.my_location),
              label: Text('Click to get them',
                style: TextStyle(fontSize: 15, color: Colors.blue),),
            ),

          ],
        ),

        floatingActionButton: FloatingActionButton.extended(
          icon: Icon (Icons.save)  ,
        label: Text('Save') ,
        backgroundColor: Colors.deepOrange ,
        foregroundColor: Colors.white ,

        onPressed: () {
          Navigator.pushNamed(context, '/third');
        })
        );

  }

}
