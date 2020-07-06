import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids/dongvat/DongVat.dart';
import 'datadongvat.dart';
class ListDongVat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListViewExampleState();
  }
}
class ListViewExampleState extends State<ListDongVat> {
  List<Container> _buildListItemsFromFlowers(){
    int index = 0;
    AudioPlayer audioPlayer;
    AudioCache audioCache;
    void read(String url) async {
      audioPlayer = AudioPlayer();

      audioPlayer = await AudioCache().play(url);
    }
    return lstDV.map((dongvat){
      var container = Container(
        decoration: index % 2 == 0?
        new BoxDecoration(color: const Color(0xFFb0e0e6)):
        new BoxDecoration(
            color: const Color(0xFF7ec0ee)
        ),
        child: new Column(
          children: <Widget>[
            new GestureDetector(
              onTap: () async {
                read(dongvat.mp3Url);
              },
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image.asset(dongvat.image, fit: BoxFit.scaleDown,),
                  new Column(
                    children: <Widget>[
                      new Text(dongvat.englishName),
                      new Text(dongvat.vnName)
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