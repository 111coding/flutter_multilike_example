import 'package:flutter/material.dart';
import 'package:flutter_webview_mgz/k_colors.dart';

class HeartBtn extends StatelessWidget {
  const HeartBtn({Key? key, this.value = false, this.onClick}) : super(key: key);

  final bool value;
  final void Function(bool v)? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick?.call(!value),
      child: Container(
        height: 51,
        width: 76,
        decoration: BoxDecoration(
          color: _fillColor(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: _icon(),
      ),
    );
  }

  Color _fillColor() => value ? KColors.point : KColors.line;

  Widget _icon() => const Icon(
        Icons.favorite,
        color: Colors.white,
        size: 23,
      );
}
