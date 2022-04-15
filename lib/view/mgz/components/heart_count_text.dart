import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_webview_mgz/const.dart';
import 'package:flutter_webview_mgz/data/model/mgz.dart';
import 'package:flutter_webview_mgz/k_colors.dart';

class HeartCountText extends StatelessWidget {
  const HeartCountText({Key? key, required this.mgz}) : super(key: key);

  final Mgz mgz;

  final iconFullSize = 19.0;
  final iconSize = 14.0;

  @override
  Widget build(BuildContext context) {
    if (mgz.likeCnt == 0) {
      return eWidth(18);
    }
    return SizedBox(
      child: Row(
        children: [
          _hearts(),
          eWidth(4),
          _text(),
        ],
      ),
    );
  }

  Widget _text() {
    const defaultTextStyle = TextStyle(fontSize: 11, color: KColors.basic1);

    if (mgz.like) {
      final likeCntWithoutMe = mgz.likeCnt - 1;
      final tail = mgz.likeCnt > 1 ? "님 외 $likeCntWithoutMe명이 좋아합니다" : "님이 좋아합니다";
      return Text.rich(
        TextSpan(children: [
          const TextSpan(text: "자두", style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: tail),
        ]),
        style: defaultTextStyle,
      );
    }

    return Text("${mgz.likeCnt}명의 회원이 좋아합니다", style: defaultTextStyle);
  }

  Widget _hearts() {
    final iconCnt = min(mgz.likeCnt, 3);
    final half = iconSize / 2;

    final children = List.generate(iconCnt, (index) {
      final left = half * (iconCnt - index - 1);
      return left == 0
          ? _heart()
          : Positioned(
              left: left,
              child: _heart(),
            );
    });

    double boxLeft = (children.length + 1) * iconSize / 2 + 1;

    return SizedBox(
      width: boxLeft,
      child: Stack(
        children: children,
      ),
    );
  }

  Widget _heart() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Icon(Icons.favorite, color: Colors.white, size: iconFullSize),
        Icon(Icons.favorite, color: KColors.point, size: iconSize),
      ],
    );
  }
}
