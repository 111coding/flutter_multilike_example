import 'package:flutter/material.dart';
import 'package:flutter_webview_mgz/k_colors.dart';

class MoreBtn extends StatelessWidget {
  const MoreBtn({
    Key? key,
    this.enable = true,
    this.onClick,
  }) : super(key: key);

  final bool enable;
  final void Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enable ? onClick : null,
      child: Container(
        width: double.infinity,
        height: 51,
        decoration: BoxDecoration(
          color: Colors.white,
          border: _border(),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(
          "사이트로 이동",
          style: _textStyle(),
        ),
      ),
    );
  }

  Border _border() => Border.all(color: KColors.line);

  TextStyle _textStyle() => TextStyle(
        color: enable ? KColors.basic1 : KColors.line,
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.bold,
      );
}
