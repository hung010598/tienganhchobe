import 'package:flutter/material.dart';
import 'package:kids/BaiHoc.dart';
import 'ListTruongHoc.dart';

//Define "root widget"


class LayoutTruongHoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    final materialApp = WillPopScope(
        onWillPop: ()async{
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context) => new BaiHoc()));
      return true;
    },
    child: new MaterialApp(
      title: '',
      // ignore: strong_mode_invalid_cast_new_expr
      home: new ListTH(),
    )
    );
    return materialApp;
  }
}