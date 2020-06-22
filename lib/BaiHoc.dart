import 'package:flutter/material.dart';
import 'package:tienganhchobe/BangChu.dart';
import 'package:tienganhchobe/dongvat/layout.dart';
import 'package:tienganhchobe/so.dart';

class BaiHoc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFdbe6a4),
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
        child:
        new GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            childAspectRatio: 1.5,
            padding: const EdgeInsets.all(0.0),
            children: <Widget>[
              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => new BangChu()),
                          );
                        },
                        child: new Image.asset('assets/logochu.png', fit: BoxFit.scaleDown,),
                      ),
                      new Text("Bảng chữ")
                    ],
                  )
                ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => new So()),
                          );
                        },
                        child: new Image.asset('assets/logoso.png', fit: BoxFit.scaleDown,),
                      ),
                      new Text("Số")
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => new LayoutDongVat()),
                          );
                        },
                        child: new Image.asset('assets/logodv.png', fit: BoxFit.scaleDown,),
                      ),
                      new Text("Động vật")
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new Image.asset('assets/logomau.png', fit: BoxFit.scaleDown,),
                      new Text("Màu sắc")
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new Image.asset('assets/logotruong.png', fit: BoxFit.scaleDown,),
                      new Text("Trường học")
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new Image.asset('assets/logoqg.png', fit: BoxFit.scaleDown,),
                      new Text("Quốc gia")
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new Image.asset('assets/logoqua.png', fit: BoxFit.scaleDown,),
                      new Text("Quả")
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new Image.asset('assets/logohoa.png', fit: BoxFit.scaleDown,),
                      new Text("Hoa")
                    ],
                  )
              ),

            ]

        ),

        padding: const EdgeInsets.only(top: 40.0),
        alignment: Alignment.center,
      ),

    );
  }
}