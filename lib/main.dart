import 'package:flutter/material.dart';
//import 'widgets/star_rating.dart';
//import 'widgets/dashed_line.dart';
import 'pages/main/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        highlightColor: Colors.transparent //去除水波纹高亮效果
      ),
      home: XLLMainPage()
    );
  }
}
