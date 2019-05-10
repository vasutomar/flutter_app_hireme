import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 120.0),
        Container(
          width: 90.0,
          child: new Divider(color: Colors.green),
        ),
        SizedBox(height: 10.0),
        Text(
          'Vasu Tomar',
          style: TextStyle(color: Colors.white, fontSize: 45.0),
        ),
        Padding(padding: EdgeInsets.all(4.0),),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 6,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Mobile application developer, Flutter developer',
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/VasuPicture2.jpg"),
                fit: BoxFit.cover,
              ),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .8)),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 40.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );

    final String GithubURL = "https://github.com/vasutomar";
    final String LinkedInURL = "https://www.linkedin.com/in/vasu-tomar";
    final String FacebookURL = "https://www.facebook.com/muzepicaso.zevon";
    final String TwitterURL = "https://twitter.com/vasutomar28";

    _launchURL(url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    _launchcaller() async {
      const url = "tel:7536865811";
      if(await(canLaunch(url)))
        await launch(url);
      else
        throw 'Could not dial.';
    }

    final bottomContent = Container(
      child: Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // horizontal
            children: <Widget>[
              new Padding(padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),),
              new FloatingActionButton(
                heroTag: "buttonGithub",
                onPressed: () {
                  _launchURL(GithubURL);
                },
                backgroundColor: Color.fromRGBO(228, 241, 254, 1.0),
                child: Image.asset("assets/images/GitHub.png"),
              ),
              new Padding(padding: EdgeInsets.all(20.0),),
              new FloatingActionButton(
                heroTag: "buttonLinkedin",
                onPressed: () {
                  _launchURL(LinkedInURL);
                },
                backgroundColor: Color.fromRGBO(228, 241, 254, 1.0),
                child: Image.asset("assets/images/Linkedin.png"),
              ),
              new Padding(padding: EdgeInsets.all(20.0),),
              new FloatingActionButton(
                heroTag: "buttonFacebook",
                onPressed: () {
                  _launchURL(FacebookURL);
                },
                backgroundColor: Color.fromRGBO(228, 241, 254, 1.0),
                child: Image.asset("assets/images/Facebook.png"),
              ),
              new Padding(padding: EdgeInsets.all(20.0),),
              new FloatingActionButton(
                heroTag: "buttonTwitter",
                onPressed: () {
                  _launchURL(TwitterURL);
                },
                backgroundColor: Color.fromRGBO(228, 241, 254, 1.0),
                child: Image.asset("assets/images/Twitter.png"),
              ),
              new Padding(padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // horizontal
            children: <Widget>[
              new Padding(padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),),
              new Text('Github', style: new TextStyle(fontWeight: FontWeight.bold),),
              new Padding(padding: EdgeInsets.all(25.0),),
              new Text('Linkedin', style: new TextStyle(fontWeight: FontWeight.bold)),
              new Padding(padding: EdgeInsets.all(18.0),),
              new Text('Facebook' ,style: new TextStyle(fontWeight: FontWeight.bold)),
              new Padding(padding: EdgeInsets.all(20.0),),
              new Text('Twitter' ,style: new TextStyle(fontWeight: FontWeight.bold)),
              new Padding(padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 9.0, 0.0),),
            ],
          ),
          new Padding(padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0)),
        ],
      ),
    );

    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Color.fromRGBO(228, 241, 254, 1.0),
        bottomNavigationBar: BottomAppBar(
            color: Color.fromRGBO(1, 50, 67, 1.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(icon : Icon(Icons.call, color: Colors.white, size: 40.0,), onPressed:()=>_launchcaller(),),
                Padding(padding: EdgeInsets.all(30.0)),
                IconButton(icon : Icon(Icons.face, color: Colors.white, size: 40.0), onPressed: null,),
              ],
            )
        ),
        body: new Column(
          children : <Widget>[
            topContent,
            new Padding(padding: EdgeInsets.all(20.0)),
            bottomContent,
            //new Padding(padding: EdgeInsets.all(70.0)),
          ],
        ),
      ),
    );
  }
}