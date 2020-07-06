import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kids/BaiHoc.dart';
import 'package:kids/main.dart';
import 'package:kids/startscreen.dart';

class Introduce extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFFFAB91),
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

  }
  String _textFromFile = "";
  _MyHomePageState() {
    loadAsset().then((val) => setState(() {
      _textFromFile = val;
    }));
  }
  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/introduction.txt');
  }
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: ()async{
          Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) => new HomePage()));
          return true;
        },
        child: new Scaffold(
            body: new Container(
              child: new Center(
                child:  new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                        flex: 4,
                        child: new Container(
                          padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/chuyen.png"),
                              fit: BoxFit.scaleDown
                            )
                          ),
                        ),
                      ),
                      new Expanded(
                        flex: 11,
                        child: new Container(
                            padding: const EdgeInsets.all(32.0),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                new Container(
                                  padding: const EdgeInsets.only(bottom: 32.0),
                                  alignment: Alignment.center,
                                  child: new Text("Learning Kids",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                new Text(_textFromFile),

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


    );
  }

  Future<bool> backScreen(){

    Navigator.pop(context,
        new MaterialPageRoute(builder: (context) => new StartScreen()));

  }
}