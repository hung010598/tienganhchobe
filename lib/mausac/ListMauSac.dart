import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids/dongvat/DongVat.dart';
import 'package:kids/mausac/mausac.dart';
import 'datamausac.dart';
class ListMauSac extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListViewExampleState();
  }
}
class ListViewExampleState extends State<ListMauSac> {
  List<Container> _buildListItemsFromFlowers(){
    int index = 0;
    AudioPlayer audioPlayer;
    AudioCache audioCache;
    void read(String url) async {
      audioPlayer = AudioPlayer();

      audioPlayer = await AudioCache().play(url);
    }
    return lstMauSac.map((mausac){
      var container = Container(
        padding: const EdgeInsets.only(left: 32.0, right: 16.0, top: 16, bottom: 16.0),
        decoration: index % 2 == 0?
        new BoxDecoration(color: const Color(0xFFb0e0e6)):
        new BoxDecoration(
            color: const Color(0xFF7ec0ee)
        ),
        child: new Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new GestureDetector(
              onTap: () async {
                read(mausac.mp3Url);
              },
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  new Image.asset(mausac.image, fit: BoxFit.scaleDown,width: 70.0,
                    height: 70.0,),
                  new Column(
                    children: <Widget>[
                      new Text(mausac.englishName,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20.0
                        ),),
                      new Text(mausac.vnName,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20.0
                        ),),
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      );
      index = index + 1;
      return container;
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children: _buildListItemsFromFlowers(),
    );
  }
}