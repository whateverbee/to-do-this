import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:to_do_this/todothis_listscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo.this',
      home: ToDothisListScreen(),
    );
  }
}
