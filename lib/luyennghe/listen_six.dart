import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kids/BaiHoc.dart';
import 'package:kids/luyennghe/layout_luyennghe.dart';
import 'package:kids/startscreen.dart';

class ListenSix extends StatelessWidget {

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
  void Read(String url, bool play) async{
    if(play == true) {
      audioPlayer = await AudioCache().play(url);
    }
    else
      audioPlayer.stop();
  }
  String _textFromFile = "";
  _MyHomePageState() {
    loadAsset().then((val) => setState(() {
      _textFromFile = val;
    }));
  }
  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/national.txt');
  }
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(

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
                      new Expanded(
                        flex: 2,
                        child: new Container(
                          padding: const EdgeInsets.only(top: 32.0),
                          alignment: Alignment.center,
                          child: new Text("Listen 6",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black
                              ),
                          ),
                        ),
                      ),
                      new Expanded(
                        flex: 13,
                        child: new Container(
                          padding: const EdgeInsets.all(32.0),
                          child: new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                              new Text(_textFromFile),
                              new Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  new GestureDetector(
                                    onTap: () async{
                                      Read("Mp3/national.mp3", true);
                                    },
                                    child: new Image.asset("assets/play.png"),
                                  ),
                                  new GestureDetector(
                                    onTap: () async{
                                      Read("Mp3/national.mp3", false);
                                    },
                                    child: new Image.asset("assets/pause.png"),
                                  )
                                ],
                              ),
                              ],
                          )
                        ),
                      )
                    ]

                ),


              ),

              alignment: Alignment.center,
            )
        ),
        onWillPop: () async {
          Read("Mp3/national.mp3", false);
          Navigator.pushReplacement(context,
              new MaterialPageRoute(builder: (context) => new LuyenNghe()));
          return true;
        }

    );
  }

  Future<bool> backScreen(){

    Navigator.pop(context,
        new MaterialPageRoute(builder: (context) => new StartScreen()));

  }
}