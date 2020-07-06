import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kids/ChuyenManHinh.dart';
import 'package:kids/introduce.dart';
import 'package:kids/startscreen.dart';

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
    return WillPopScope(

        onWillPop: ()async{
          Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) => MyApp()),);
          return true;
        },
      child: new Scaffold(
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
                onTap: () {
                  Navigator.pushReplacement(context,
                    new MaterialPageRoute(builder: (context) => StartScreen()
                    ),
                  );
                },
                child: new Image.asset(
                  'assets/start.png',
                  fit:BoxFit.scaleDown,
                  width: 100.0,
                  height: 100.0,
                ),
              ),

              new GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(

                      new MaterialPageRoute(builder: (context) => new Introduce()),
                    );
                  },
                  child:new Image.asset(
                    'assets/gthieu.png',
                    fit: BoxFit.scaleDown,
                    width: 100.0,
                    height: 100.0,
                  ),
              ),

              new GestureDetector(
                onTap: (){
                  _onExitPressed();
                },
                child:new Image.asset(
                  'assets/exit.png',
                  fit: BoxFit.scaleDown,
                  width: 100.0,
                  height: 100.0,
                )
              ),

            ]

        ),

        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
      ),
      )
    );
  }
  Future<bool> _onExitPressed() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('You are going to exit the application!!'),
            actions: <Widget>[
              FlatButton(
                child: Text('NO'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text('YES'),
                onPressed: () {
                  SystemNavigator.pop();
                  return true;
                },
              ),
            ],
          );
        });
  }
}