
import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids/kiemtra/StartKiemTra.dart';
import 'package:kids/kiemtra/test1.dart';
import 'package:kids/kiemtra/test4.dart';

class Bai4 extends StatelessWidget {

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
  var lstTest = lstTest4[0];
  AudioPlayer audioPlayer;
  AudioCache audioCache;
  var dapan = Random().nextInt(3);
  String url="";
  int index = 0;
  void read() async {

    switch (dapan)
    {
      case 0:{
        url = lstTest.mp3Url1;
        break;
      }
      case 1:{
        url = lstTest.mp3Url2;
        break;
      }
      case 2:{
        url = lstTest.mp3Url3;
        break;
      }
      case 3:{
        url = lstTest.mp3Url4;
        break;
      }
    }
    audioPlayer = AudioPlayer();

    audioPlayer = await AudioCache().play(url);
    //lstTest = lstTest1[1];
  }

  void readDungSai(url) async{
    audioPlayer = AudioPlayer();

    audioPlayer = await AudioCache().play(url);
  }
  bool CheckAnswer (urlAnswer)
  {
    if(urlAnswer == url) {
      readDungSai("Mp3/dung.mp3");
      return true;
    }
    else {
      readDungSai("Mp3/sai.mp3");
      return false;
    }
  }
  void _incrementCounter(String urlAnswer) {

    if(CheckAnswer(urlAnswer) == true)
    {
      index++;

      if(index < 10)
      {
        setState(() {
          dapan = Random().nextInt(3);
          lstTest = lstTest4[index];
        });
      }
      else
        Navigator.pushReplacement(
          context,
          new MaterialPageRoute(builder: (context) => new StartKiemTra()),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    read();
    return WillPopScope(
        onWillPop: ()async{
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) => new StartKiemTra()));
      return true;
    },
    child: new Scaffold(
        body:new Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/study.jpg"), fit: BoxFit.fill)),
        child:new Column(
          children: <Widget>[
            new Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 32.0, bottom: 32.0),
              child: new Text("Câu hỏi số: "+(index+1).toString()+"/10",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 24.0
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(top: 50.0),
              child: new GestureDetector(
                onTap: () async{
                  read();
                },
                child: new Image.asset('assets/sound.png', fit: BoxFit.scaleDown,),
              ),
            ),
            new Container(
              height: 400.0,
              child:
              new GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  childAspectRatio: 1.0,

                  children: <Widget>[
                    new Container(
                        child: new Column(
                          children: <Widget>[
                            new GestureDetector(
                              child: new Image.asset(lstTest.image1, fit: BoxFit.scaleDown,width: 100.0,height: 100.0),
                              onTap: () async {
                                //audioPlayer = await AudioCache().loop("Mp3/a.mp3");
                                _incrementCounter(lstTest.mp3Url1);
                              },
                            ),
                          ],
                        )
                    ),

                    new Container(
                        child: new Column(
                          children: <Widget>[
                            new GestureDetector(
                              onTap: () async {
                                _incrementCounter(lstTest.mp3Url2);
                              },
                              child: new Image.asset(lstTest.image2, fit: BoxFit.scaleDown,width: 100.0,height: 100.0),
                            ),
                          ],
                        )
                    ),

                    new Container(
                        child: new Column(
                          children: <Widget>[
                            new GestureDetector(
                              onTap: (){
                                _incrementCounter(lstTest.mp3Url3);
                              },
                              child: new Image.asset(lstTest.image3, fit: BoxFit.scaleDown,width: 100.0,height: 100.0),
                            ),
                          ],
                        )
                    ),

                    new Container(
                        child: new Column(
                          children: <Widget>[
                            new GestureDetector(
                              onTap: (){
                                _incrementCounter(lstTest.mp3Url4);
                              },
                              child: new Image.asset(lstTest.image4, fit: BoxFit.scaleDown,width: 100.0,height: 100.0),
                            ),
                          ],
                        )
                    )
                  ]

              ),
            ),
          ],
        )
        )
    )
    );

  }

}