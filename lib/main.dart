import 'package:flutter/material.dart';
import 'package:tienganhchobe/startscreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:
      new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/hoc.jpg"), fit: BoxFit.fill)),
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              new GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new StartScreen()),
                  );
                },
                child: new Image.asset(
                  'assets/start.png',
                  fit:BoxFit.scaleDown,
                  width: 100.0,
                  height: 100.0,
                ),
              ),


              new Image.asset(
                'assets/gthieu.png',
                fit: BoxFit.scaleDown,
                width: 100.0,
                height: 100.0,
              ),

              new Image.asset(
                'assets/exit.png',
                fit: BoxFit.scaleDown,
                width: 100.0,
                height: 100.0,
              )
            ]

        ),

        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
      ),

    );
  }
}