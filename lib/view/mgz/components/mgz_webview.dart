import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MgzWebview extends StatelessWidget {
  const MgzWebview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      initialUrlRequest: URLRequest(url: Uri.parse("https://team.oopy.io/")),
      initialOptions: InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(
          mediaPlaybackRequiresUserGesture: false,
          javaScriptEnabled: true,
          javaScriptCanOpenWindowsAutomatically: true,
          useShouldInterceptAjaxRequest: true,
          useShouldOverrideUrlLoading: true,
        ),
        ios: IOSInAppWebViewOptions(
          allowsInlineMediaPlayback: true,
          allowsLinkPreview: true,
        ),
        android: AndroidInAppWebViewOptions(
          allowContentAccess: true,
          useHybridComposition: true,
          cacheMode: AndroidCacheMode.LOAD_DEFAULT,
        ),
      ),
      onLoadStop: (wc, url) async {
        wc.evaluateJavascript(source: 'document.body.setAttribute("style","padding-bottom:100px;")');
      },
      onWebViewCreated: (wc) {
        //
      },
      onAjaxProgress: (wc, ajaxRequest) async {
        print("Test");
        return ajaxRequest.action!;
      },
      onLoadStart: (wc, url) async {},
      onConsoleMessage: (wc, m) {
        print(m.message);
      },
    );
  }
}
