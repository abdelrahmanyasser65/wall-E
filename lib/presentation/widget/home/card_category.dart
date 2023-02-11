import 'package:earthkeepers/presentation/resources/fonts.dart';
import 'package:earthkeepers/presentation/resources/values.dart';
import 'package:earthkeepers/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../resources/color_manager.dart';

class CardCategory extends StatelessWidget {
final String text;
final bool isSelect;
final int index;
final Function()onTap;

  const CardCategory({super.key, required this.text, required this.isSelect, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          left: HeightSized.h2,
          right: index==6?HeightSized.h2:0,
        ),
        decoration:isSelect?
        BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.25.h,
              color: ColorManager.primary
            )
        ):BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorManager.black.withOpacity(0.04),
        ),
        padding: EdgeInsets.symmetric(
            vertical: 1.h,
            horizontal: 3.h
        ),
        child: DefaultText(
            text: text,
            color: isSelect?ColorManager.primary:ColorManager.grey,
            fontSize: FontSized.s14,
            fontWeight: FontWeightManager.semiBold),
      ),
    );
  }
}
