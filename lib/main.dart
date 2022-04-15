import 'package:flutter/material.dart';
import 'package:flutter_webview_mgz/data/dummy/dummy.dart';
import 'package:flutter_webview_mgz/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Webview Mgz',
      routes: routes,
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
