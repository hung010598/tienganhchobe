import 'package:flutter/material.dart';
import 'package:kids/BaiHoc.dart';
import 'ListDongVat.dart';

//Define "root widget"


class LayoutDongVat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    final materialApp = new WillPopScope(
        onWillPop: ()async{
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) => new BaiHoc()));
      return true;
    },
    child: new MaterialApp(
      title: '',
      // ignore: strong_mode_invalid_cast_new_expr
      home: new ListDongVat(),
    )
    );
    return materialApp;
  }
}