
import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tienganhchobe/kiemtra/StartKiemTra.dart';
import 'package:tienganhchobe/kiemtra/test1.dart';

class Bai1 extends StatelessWidget {

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
  var lstTest = lstTest1[0];
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

  bool CheckAnswer (urlAnswer)
  {
    if(urlAnswer == url)
      return true;
    else
      return false;
  }
  void _incrementCounter(String urlAnswer) {

    if(CheckAnswer(urlAnswer) == true)
    {
      index++;

      if(index < 8)
        {
          setState(() {
            dapan = Random().nextInt(3);
            lstTest = lstTest1[index];
          });
        }
      else
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new StartKiemTra()),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    read();
    return new Scaffold(
      body:new Column(
        children: <Widget>[
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
            height: 600.0,
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
    );

  }

}