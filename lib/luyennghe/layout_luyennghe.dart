import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kids/BaiHoc.dart';
import 'package:kids/luyennghe/listen_five.dart';
import 'package:kids/luyennghe/listen_four.dart';
import 'package:kids/luyennghe/listen_one.dart';
import 'package:kids/luyennghe/listen_seven.dart';
import 'package:kids/luyennghe/listen_six.dart';
import 'package:kids/luyennghe/listen_three.dart';
import 'package:kids/luyennghe/listen_two.dart';
import 'package:kids/startscreen.dart';

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
    return new WillPopScope(
        onWillPop: ()async{
          Navigator.pushReplacement(context,new MaterialPageRoute(builder: (context) => StartScreen()));
          return true;
        },
      child: new Scaffold(
        body: new Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/vvv.jpg"), fit: BoxFit.fill)),
            child: new Center(
              child:  new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => ListenOne()
                              ),
                          );
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Image.asset("assets/sound.png", fit: BoxFit.scaleDown,),
                            new Text("Listen One")
                          ],
                        )
                    ),


                    new GestureDetector(
                        onTap: () async{
                          Navigator.push(context,
                            new MaterialPageRoute(builder: (context) => new ListenTwo()),
                          );
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Image.asset("assets/sound.png", fit: BoxFit.scaleDown,),
                            new Text("Listen Two")
                          ],
                        )
                    ),

                    new GestureDetector(
                        onTap: () async{
                          Navigator.push(context,
                            new MaterialPageRoute(builder: (context) => new ListenThree()),
                          );
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Image.asset("assets/sound.png", fit: BoxFit.scaleDown,),
                            new Text("Listen Three")
                          ],
                        )
                    ),

                    new GestureDetector(
                        onTap: () async{
                          Navigator.push(context,
                            new MaterialPageRoute(builder: (context) => new ListenFour()),
                          );
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Image.asset("assets/sound.png", fit: BoxFit.scaleDown,),
                            new Text("Listen Four")
                          ],
                        )
                    ),

                    new GestureDetector(
                        onTap: () async{
                          Navigator.push(context,
                            new MaterialPageRoute(builder: (context) => new ListenFive()),
                          );
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Image.asset("assets/sound.png", fit: BoxFit.scaleDown,),
                            new Text("Listen Five")
                          ],
                        )
                    ),

                    new GestureDetector(
                        onTap: () async{
                          Navigator.push(context,
                            new MaterialPageRoute(builder: (context) => new ListenSix()),
                          );
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Image.asset("assets/sound.png", fit: BoxFit.scaleDown,),
                            new Text("Listen Six")
                          ],
                        )
                    ),

                    new GestureDetector(
                        onTap: () async{
                          Navigator.pushReplacement(context,
                            new MaterialPageRoute(builder: (context) => ListenSeven ()),
                          );
                        },
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Image.asset("assets/sound.png", fit: BoxFit.scaleDown,),
                            new Text("Listen Seven")
                          ],
                        )
                    ),
                  ]

              ),


            ),
            padding: const EdgeInsets.only(top: 32.0),
            alignment: Alignment.center,
          )
      ),

    );
  }

  Future<bool> backScreen(){

     Navigator.pop(context,
      new MaterialPageRoute(builder: (context) => new StartScreen()));

  }
}