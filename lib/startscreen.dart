import 'package:flutter/material.dart';
import 'package:tienganhchobe/BaiHoc.dart';
import 'package:tienganhchobe/kiemtra/StartKiemTra.dart';
import 'package:tienganhchobe/layout_kiemtra/layout_test.dart';

import 'giaitri/giaitri.dart';

class StartScreen extends StatelessWidget {

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
                image: AssetImage("assets/start2.png"), fit: BoxFit.fill)),
        child:
        new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new BaiHoc()),
                  );
                },
                child: new Image.asset(
                  'assets/baitap.png',
                  fit: BoxFit.scaleDown,
                ),
              ),


              new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new StartKiemTra()),
                  );
                },
                child: new Image.asset(
                  'assets/kiemtra.png',
                  fit: BoxFit.scaleDown,
                ),
              ),

              new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new GiaiTri()),
                  );
                },
                child: new Image.asset(
                  'assets/giaitri.png',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.scaleDown,
                ),
              ),

              new Image.asset(
                'assets/luyennghe.png',
                fit: BoxFit.scaleDown,
                width: 100.0,
                height: 100.0,
              )
            ]

        ),

        padding: const EdgeInsets.only(top: 32.0),
        alignment: Alignment.center,
      ),

    );
  }
}