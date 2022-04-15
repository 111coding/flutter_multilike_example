import 'package:flutter/material.dart';
import 'package:flutter_webview_mgz/data/model/mgz.dart';

class MgzController {
  late ValueNotifier<Mgz> mgz;

  Future<void> like(bool v) async {
    int increseCnt = v ? 1 : -1;
    int newCnt = mgz.value.likeCnt + increseCnt;
    mgz.value = Mgz(like: v, likeCnt: newCnt, url: "");
  }

  MgzController({required Mgz mgz}) {
    this.mgz = ValueNotifier(mgz);
  }
}
