import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In our case, the app will start
    // on the FirstScreen Widget
    initialRoute: '/',
    routes: {
      '/': (context) => LandingPage(),
      '/homepage': (context) => new HomePage(),
    },
  ));
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'HireMe Application',
        theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
        home: new Scaffold(
            backgroundColor: Color.fromRGBO(197, 239, 247, 1.0),
            body: new Center(
              child: new InkWell(
                splashColor: Color.fromRGBO(1, 50, 67, 1.0),
                onTap: (){
                  Navigator.pushNamed(context, '/homepage');
                },
                child: new Center(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new ExactAssetImage('assets/images/VasuPicture.jpg')
                              )
                          )),
                      new Padding(padding: new EdgeInsets.all(10.0)),
                      new Text('Vasu tomar', style: new TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 70.0)),
                      new Text('Press and release to continue',style: new TextStyle(color: Colors.black45, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 15.0))
                    ],
                  ),
                ),
              ),
            )
        )
    );
  }
}