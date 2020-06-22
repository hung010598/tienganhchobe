import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class So extends StatelessWidget {

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
  AudioPlayer audioPlayer;
  AudioCache audioCache;
  void read(String url) async {
    audioPlayer = AudioPlayer();

    audioPlayer = await AudioCache().play(url);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:
      new Container(
        child:
        new GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(0.0),
            children: <Widget>[
              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        child: new Image.asset('Images/so/one.png', fit: BoxFit.scaleDown,),
                        onTap: () async {
                          //audioPlayer = await AudioCache().loop("Mp3/a.mp3");
                          read("Mp3/one.mp3");
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
                          read("Mp3/two.mp3");
                        },
                        child: new Image.asset('Images/so/two.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/three.mp3");
                        },
                        child: new Image.asset('Images/so/three.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/four.mp3");
                        },
                        child: new Image.asset('Images/so/four.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/five.mp3");
                        },
                        child: new Image.asset('Images/so/five.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/six.mp3");
                        },
                        child: new Image.asset('Images/so/six.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/seven.mp3");
                        },
                        child: new Image.asset('Images/so/seven.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/eight.mp3");
                        },
                        child: new Image.asset('Images/so/eight.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/nine.mp3");
                        },
                        child: new Image.asset('Images/so/nine.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/ten.mp3");
                        },
                        child: new Image.asset('Images/so/ten.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              )
            ]

        ),

        padding: const EdgeInsets.only(top: 40.0),
        alignment: Alignment.center,
      ),

    );

  }

}