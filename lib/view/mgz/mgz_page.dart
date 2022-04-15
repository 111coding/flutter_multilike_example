import 'package:flutter/material.dart';
import 'package:flutter_webview_mgz/const.dart';
import 'package:flutter_webview_mgz/data/controller/mgz_controller.dart';
import 'package:flutter_webview_mgz/data/model/mgz.dart';
import 'package:flutter_webview_mgz/view/mgz/components/back_btn.dart';
import 'package:flutter_webview_mgz/view/mgz/components/gradient_box.dart';
import 'package:flutter_webview_mgz/view/mgz/components/heart_btn.dart';
import 'package:flutter_webview_mgz/view/mgz/components/heart_count_text.dart';
import 'package:flutter_webview_mgz/view/mgz/components/mgz_webview.dart';
import 'package:flutter_webview_mgz/view/mgz/components/more_btn.dart';

class MgzPage extends StatelessWidget {
  const MgzPage({Key? key, required this.controller}) : super(key: key);

  final MgzController controller;

  void likeClick(bool v) {
    print("liuke");
    controller.like(v);
  }

  void moreClick() {
    print("more");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MgzWebview(),
          _backBtn(context),
          _bottomBox(),
        ],
      ),
    );
  }

  Widget _backBtn(BuildContext context) => Positioned(
        top: topPadding(context),
        left: kHorizontalPadding,
        child: const BackBtn(),
      );

  Widget _bottomBox() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: GradientBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ValueListenableBuilder(
              valueListenable: controller.mgz,
              builder: (context, Mgz mgz, widget) {
                return HeartCountText(mgz: mgz);
              },
            ),
            eHeight(8),
            Row(
              children: [
                ValueListenableBuilder(
                  valueListenable: controller.mgz,
                  builder: (context, Mgz mgz, widget) {
                    return HeartBtn(value: mgz.like, onClick: likeClick);
                  },
                ),
                eWidth(12),
                Expanded(
                  child: MoreBtn(onClick: moreClick),
                ),
              ],
            ),
            eHeight(18),
          ],
        ),
      ),
    );
  }
}
