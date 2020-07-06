import 'package:flutter/material.dart';
import 'package:kids/layout_kiemtra/layout_test.dart';
import 'package:kids/layout_kiemtra/test2.dart';
import 'package:kids/layout_kiemtra/test3.dart';
import 'package:kids/layout_kiemtra/test4.dart';
import 'package:kids/layout_kiemtra/test5.dart';
import 'package:kids/layout_kiemtra/test6.dart';
import 'package:kids/layout_kiemtra/test7.dart';
import 'package:kids/layout_kiemtra/test8.dart';
import 'package:kids/startscreen.dart';

class StartKiemTra extends StatelessWidget {

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
        Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) => new StartScreen()));
        return true;
      },
      child: new Scaffold(

      body:
      new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/testter.jpg"), fit: BoxFit.fill)),
        child:
        new Center(
          child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: 1.0,

              padding: const EdgeInsets.all(40.0),
              children: <Widget>[
                new Container(
                    child: new Column(

                      children: <Widget>[
                        new GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(

                              new MaterialPageRoute(builder: (context) => new Bai1()),
                            );
                          },
                          child: new Image.asset(
                              'assets/mot.png',
                              fit: BoxFit.scaleDown,
                              width: 100.0,
                              height: 100.0
                          ),
                        ),
                      ],
                    )
                ),

                new Container(
                    child: new Column(
                      children: <Widget>[
                        new GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              new MaterialPageRoute(builder: (context) => new Bai2()),
                            );
                          },
                          child: new Image.asset('assets/hai.png', fit: BoxFit.scaleDown,width: 100.0,
                              height: 100.0),
                        ),
                      ],
                    )
                ),

                new Container(
                    child: new Column(
                      children: <Widget>[
                        new GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              new MaterialPageRoute(builder: (context) => new Bai3()),
                            );
                          },
                          child: new Image.asset('assets/ba.png', fit: BoxFit.scaleDown,width: 100.0,
                              height: 100.0),
                        ),
                      ],
                    )
                ),

                new Container(
                    child: new Column(
                      children: <Widget>[
                        new GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              new MaterialPageRoute(builder: (context) => new Bai4()),
                            );
                          },
                          child: new Image.asset('assets/bon.png', fit: BoxFit.scaleDown,width: 100.0,
                              height: 100.0),
                        ),
                      ],
                    )
                ),

                new Container(
                    child: new Column(
                      children: <Widget>[
                        new GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              new MaterialPageRoute(builder: (context) => new Bai5()),
                            );
                          },
                          child: new Image.asset('assets/nam.png', fit: BoxFit.scaleDown,width: 100.0,
                              height: 100.0),
                        ),
                      ],
                    )
                ),

                new Container(
                    child: new Column(
                      children: <Widget>[
                        new GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              new MaterialPageRoute(builder: (context) => new Bai6()),
                            );
                          },
                          child: new Image.asset('assets/sau.png', fit: BoxFit.scaleDown,width: 100.0,
                              height: 100.0),
                        ),
                      ],
                    )
                ),

                new Container(
                    child: new Column(
                      children: <Widget>[
                        new GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              new MaterialPageRoute(builder: (context) => new Bai7()),
                            );
                          },
                          child: new Image.asset('assets/bay.png', fit: BoxFit.scaleDown,width: 100.0,
                              height: 100.0),
                        ),
                      ],
                    )
                ),

                new Container(
                    child: new Column(
                      children: <Widget>[
                        new GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              new MaterialPageRoute(builder: (context) => new Bai8()),
                            );
                          },
                          child: new Image.asset('assets/tam.png', fit: BoxFit.scaleDown,width: 100.0,
                              height: 100.0),
                        ),
                      ],
                    )
                ),

              ]

          ),
        )
      )
      ),
    );
  }
}