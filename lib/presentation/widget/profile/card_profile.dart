import 'package:earthkeepers/presentation/resources/color_manager.dart';
import 'package:earthkeepers/presentation/resources/fonts.dart';
import 'package:earthkeepers/presentation/resources/images.dart';
import 'package:earthkeepers/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key, required this.text, required this.function}) : super(key: key);
  final String text;
  final Function() function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical:1.5.h
        ),
        height: 8.h,
        padding: EdgeInsets.symmetric(
            vertical: 1.3.h,
            horizontal: 5.w
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5,
              color:ColorManager.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 228, 228, 228),
              offset: Offset(2, 3),
              blurRadius: 5,
              spreadRadius: 0.1,
            ),
          ],
        ),

        child: Row(
          children: [
            Image.asset(Images.change),
            SizedBox(
              width: 3.w,
            ),

            DefaultText(
              text: text,
              fontSize: 14.sp,
              fontWeight: FontWeightManager.semiBold,
              color: ColorManager.iconColor,
            ),
            const Spacer(),
            Icon(Icons.arrow_forward,color: ColorManager.iconColor,)
          ],
        ),
      ),
    );
  }
}
