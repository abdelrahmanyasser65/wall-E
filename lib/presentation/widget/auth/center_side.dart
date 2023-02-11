import 'package:earthkeepers/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';
class CenterSideText extends StatelessWidget {
  const CenterSideText({Key? key, required this.text, required this.fontS, required this.fontW, required this.color}) : super(key: key);
  final String text;
  final double fontS;
  final FontWeight fontW;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return DefaultText(
      text: text,
      color: color,
      fontSize: fontS,
      fontWeight: fontW,
    );
  }
}
