import 'package:flutter/material.dart';
import 'package:tienganhchobe/main.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

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
      body:  new Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/hello.jpg"), fit: BoxFit.fill)),
        child: new GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new HomePage()),
            );
          },
        ),
        )
    );
  }
}

