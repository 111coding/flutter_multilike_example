import 'package:flutter/material.dart';
import 'package:flutter_webview_mgz/const.dart';

class GradientBox extends StatelessWidget {
  const GradientBox({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 134,
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      decoration: BoxDecoration(
        gradient: _gradient(),
      ),
      child: child,
    );
  }

  LinearGradient _gradient() => LinearGradient(
        colors: [
          Colors.white,
          Colors.white.withOpacity(0.5),
          Colors.white.withOpacity(0),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        stops: const [0.8, 0.9, 1],
      );
}
