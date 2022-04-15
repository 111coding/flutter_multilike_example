import 'package:flutter/material.dart';
import 'package:flutter_webview_mgz/const.dart';
import 'package:flutter_webview_mgz/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding, vertical: 100),
          itemBuilder: (context, index) {
            final item = Routes.values[index];
            return ElevatedButton(
                onPressed: () {
                  item.push(context);
                },
                child: Text(
                  item.name,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ));
          },
          separatorBuilder: (context, index) => eHeight(20),
          itemCount: Routes.values.length),
    );
  }
}
