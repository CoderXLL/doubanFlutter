import 'package:flutter/material.dart';

class XLLHomeContent extends StatefulWidget {
  XLLHomeContent({Key key}) : super(key: key);

  @override
  _XLLHomeContentState createState() {
    return _XLLHomeContentState();
  }
}

class _XLLHomeContentState extends State<XLLHomeContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text("$index");
        },
        itemCount: 50,
      ),
    );
  }
}