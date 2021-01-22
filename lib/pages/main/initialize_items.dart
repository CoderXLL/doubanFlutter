import 'package:flutter/material.dart';
import '../home/home.dart';
import '../subject/subject.dart';
import 'bottom_bar_item.dart';

List<XLLNavigationItem> items = [
  XLLNavigationItem("首页", "home"),
  XLLNavigationItem("书影音", "subject"),
  XLLNavigationItem("小组", "group"),
  XLLNavigationItem("市集", "mall"),
  XLLNavigationItem("我的", "profile")
];

List<Widget> pages = [
  XLLHomePage(),
  XLLSubjectPage(),
  XLLHomePage(),
  XLLHomePage(),
  XLLHomePage()
];