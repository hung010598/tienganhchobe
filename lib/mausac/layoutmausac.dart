import 'package:flutter/material.dart';
import 'ListMauSac.dart';

//Define "root widget"


class LayoutDongVat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    final materialApp = new MaterialApp(
      title: '',
      // ignore: strong_mode_invalid_cast_new_expr
      home: new ListMauSac(),
    );
    return materialApp;
  }
}