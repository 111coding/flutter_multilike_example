import 'package:flutter_webview_mgz/data/controller/mgz_controller.dart';
import 'package:flutter_webview_mgz/data/model/mgz.dart';

class Dummy {
  static final like0 = MgzController(mgz: Mgz(like: false, likeCnt: 0, url: ""));
  static final like1Me = MgzController(mgz: Mgz(like: true, likeCnt: 1, url: ""));
  static final like1NotMe = MgzController(mgz: Mgz(like: false, likeCnt: 1, url: ""));
  static final like2Me = MgzController(mgz: Mgz(like: true, likeCnt: 2, url: ""));
  static final like2NotMe = MgzController(mgz: Mgz(like: false, likeCnt: 2, url: ""));
  static final like3Me = MgzController(mgz: Mgz(like: true, likeCnt: 3, url: ""));
  static final like3NotMe = MgzController(mgz: Mgz(like: false, likeCnt: 3, url: ""));
}
