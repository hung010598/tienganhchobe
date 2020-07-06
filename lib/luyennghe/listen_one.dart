import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids/BaiHoc.dart';
import 'package:kids/luyennghe/layout_luyennghe.dart';
import 'package:kids/startscreen.dart';
class ListenOne extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ListenOne> {

  AudioPlayer audioPlayer;


  void Read(String url, bool play) async{
    if(play == true) {
      audioPlayer = await AudioCache().play(url);
    }
    else
      audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Read("Mp3/alphabet.mp3", false);
        Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) => new LuyenNghe()));
        return true;
      },
      child: new Scaffold(
            body:
            new Container(
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
                          child: new Text("Listen 1",
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
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new GestureDetector(
                                onTap: () async{
                                  Read("Mp3/alphabet.mp3", true);
                                },
                                child: new Image.asset("assets/play.png"),
                              ),
                              new GestureDetector(
                                onTap: () async{
                                  Read("Mp3/alphabet.mp3", false);
                                },
                                child: new Image.asset("assets/pause.png"),
                              )
                            ],
                          ),
                        ),
                      )
                    ]

                ),


              ),

              alignment: Alignment.center,
            )
        ),

    );

    void moveToLastScreen() {
      Navigator.pop(context);
    }
  }
  Future<bool> _onWillPop() async{
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    ) ?? false;
  }
}