import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tienganhchobe/BaiHoc.dart';

class LuyenNghe extends StatelessWidget {

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
  AudioPlayer audioPlayer;
  void Read(String url) async{
    audioPlayer = await AudioCache().play(url);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body:
      new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/vvv.jpg"), fit: BoxFit.fill)),
        child:
        new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new GestureDetector(
                onTap: () async{
                  Read("");
                },
                child: new Row(
                  children: <Widget>[
                    new Image.asset("sound.png", fit: BoxFit.scaleDown,),
                    new Text("Listen One")
                  ],
                )
              ),


              new GestureDetector(
                  onTap: () async{
                    Read("");
                  },
                  child: new Row(
                    children: <Widget>[
                      new Image.asset("sound.png", fit: BoxFit.scaleDown,),
                      new Text("Listen One")
                    ],
                  )
              ),

              new GestureDetector(
                  onTap: () async{
                    Read("");
                  },
                  child: new Row(
                    children: <Widget>[
                      new Image.asset("sound.png", fit: BoxFit.scaleDown,),
                      new Text("Listen One")
                    ],
                  )
              ),

              new GestureDetector(
                  onTap: () async{
                    Read("");
                  },
                  child: new Row(
                    children: <Widget>[
                      new Image.asset("sound.png", fit: BoxFit.scaleDown,),
                      new Text("Listen One")
                    ],
                  )
              ),

              new GestureDetector(
                  onTap: () async{
                    Read("");
                  },
                  child: new Row(
                    children: <Widget>[
                      new Image.asset("sound.png", fit: BoxFit.scaleDown,),
                      new Text("Listen One")
                    ],
                  )
              ),

              new GestureDetector(
                  onTap: () async{
                    Read("");
                  },
                  child: new Row(
                    children: <Widget>[
                      new Image.asset("sound.png", fit: BoxFit.scaleDown,),
                      new Text("Listen One")
                    ],
                  )
              ),

              new GestureDetector(
                  onTap: () async{
                    Read("");
                  },
                child: new Row(
                  children: <Widget>[
                    new Image.asset("sound.png", fit: BoxFit.scaleDown,),
                    new Text("Listen One")
                  ],
                )
              ),
            ]

        ),

        padding: const EdgeInsets.only(top: 32.0),
        alignment: Alignment.center,
      ),

    );
  }
}