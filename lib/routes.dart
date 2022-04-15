import 'package:flutter/material.dart';
import 'package:flutter_webview_mgz/data/dummy/dummy.dart';
import 'package:flutter_webview_mgz/view/home/home_page.dart';
import 'package:flutter_webview_mgz/view/mgz/mgz_page.dart';

enum Routes {
  like0,
  like1Me,
  like1NotMe,
  like2Me,
  like2NotMe,
  like3Me,
  like3NotMe,
}

extension RoutesExtension on Routes {
  void push(BuildContext context) {
    Navigator.pushNamed(context, name);
  }
}

final routes = {
  '/': (context) => const HomePage(),
  Routes.like0.name: (context) => MgzPage(controller: Dummy.like0),
  Routes.like1Me.name: (context) => MgzPage(controller: Dummy.like1Me),
  Routes.like1NotMe.name: (context) => MgzPage(controller: Dummy.like1NotMe),
  Routes.like2Me.name: (context) => MgzPage(controller: Dummy.like2Me),
  Routes.like2NotMe.name: (context) => MgzPage(controller: Dummy.like2NotMe),
  Routes.like3Me.name: (context) => MgzPage(controller: Dummy.like3Me),
  Routes.like3NotMe.name: (context) => MgzPage(controller: Dummy.like3NotMe),
};
