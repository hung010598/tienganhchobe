import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class BangChu extends StatelessWidget {

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
                        child: new Image.asset('Images/char_a.png', fit: BoxFit.scaleDown,),
                        onTap: () async {
                          //audioPlayer = await AudioCache().loop("Mp3/a.mp3");
                          read("Mp3/a.mp3");
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
                          read("Mp3/b.mp3");
                        },
                        child: new Image.asset('assets/char_b.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/c.mp3");
                        },
                        child: new Image.asset('assets/char_c.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/d.mp3");
                        },
                        child: new Image.asset('assets/char_d.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/e.mp3");
                        },
                        child: new Image.asset('assets/char_e.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/f.mp3");
                        },
                        child: new Image.asset('assets/char_f.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/g.mp3");
                        },
                        child: new Image.asset('assets/char_g.png', fit: BoxFit.scaleDown,),
                      ),
                      ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/h.mp3");
                        },
                        child: new Image.asset('assets/char_h.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/i.mp3");
                        },
                        child: new Image.asset('assets/char_i.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/j.mp3");
                        },
                        child: new Image.asset('assets/char_j.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/k.mp3");
                        },
                        child: new Image.asset('assets/char_k.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/l.mp3");
                        },
                        child: new Image.asset('assets/char_l.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/m.mp3");
                        },
                        child: new Image.asset('assets/char_m.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/n.mp3");
                        },
                        child: new Image.asset('assets/char_n.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/o.mp3");
                        },
                        child: new Image.asset('assets/char_o.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/p.mp3");
                        },
                        child: new Image.asset('assets/char_p.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/q.mp3");
                        },
                        child: new Image.asset('assets/char_q.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/r.mp3");
                        },
                        child: new Image.asset('assets/char_r.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/s.mp3");
                        },
                        child: new Image.asset('assets/char_s.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/t.mp3");
                        },
                        child: new Image.asset('assets/char_t.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/u.mp3");
                        },
                        child: new Image.asset('assets/char_u.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/v.mp3");
                        },
                        child: new Image.asset('assets/char_v.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/w.mp3");
                        },
                        child: new Image.asset('assets/char_w.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/z.mp3");
                        },
                        child: new Image.asset('assets/char_x.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/y.mp3");
                        },
                        child: new Image.asset('assets/char_y.png', fit: BoxFit.scaleDown,),
                      ),
                    ],
                  )
              ),

              new Container(
                  child: new Column(
                    children: <Widget>[
                      new GestureDetector(
                        onTap: (){
                          read("Mp3/z.mp3");
                        },
                        child: new Image.asset('assets/char_z.png', fit: BoxFit.scaleDown,),
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