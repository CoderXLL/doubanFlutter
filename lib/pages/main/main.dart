import 'package:flutter/material.dart';
import 'initialize_items.dart';

class XLLMainPage extends StatefulWidget {
  @override
  _XLLMainPageState createState() => _XLLMainPageState();
}

class _XLLMainPageState extends State<XLLMainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 14,
          unselectedFontSize: 14,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: items,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
      ),
    );
  }
}

