import 'package:doubanFlutter/pages/home/home_content.dart';
import 'package:flutter/material.dart';

class XLLHomePage extends StatelessWidget {
  XLLHomePage({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        elevation: 0,
      ),
      body: XLLHomeContent(),
    );
  }
}

