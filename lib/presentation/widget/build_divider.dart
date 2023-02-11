import 'package:earthkeepers/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
class BuildDivider extends StatelessWidget {
  const BuildDivider({Key? key, required this.height}) : super(key: key);
final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:  ColorManager.iconColor,
          borderRadius: BorderRadius.circular(5)
      ),
      height: height,
    );
  }
}
