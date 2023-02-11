import 'package:earthkeepers/presentation/resources/color_manager.dart';
import 'package:earthkeepers/presentation/resources/fonts.dart';
import 'package:earthkeepers/presentation/resources/images.dart';
import 'package:earthkeepers/presentation/resources/strings.dart';
import 'package:earthkeepers/presentation/resources/values.dart';
import 'package:earthkeepers/presentation/widget/auth/center_side.dart';
import 'package:earthkeepers/presentation/widget/default_text.dart';
import 'package:earthkeepers/presentation/widget/home/app_bar_cart.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: defaultAppBar(context,Strings.myCart),
      body: Center(

        child: ListView(

         padding: EdgeInsets.only(
           top: HeightSized.h6
         ),
          children: [
            Image.asset(Images.emptyIcon),

            Center(
              child: DefaultText(
                text: Strings.cartEmpty,
                color: ColorManager.textColor1,
                fontSize: FontSized.s20,
                fontWeight: FontWeightManager.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
                vertical: 2.h
              ),
              child: DefaultText(
                textAlign: TextAlign.center,
                text: Strings.sorryAdd,
                color: ColorManager.grey.withOpacity(0.6),
                fontSize: FontSized.s14,
                fontWeight: FontWeightManager.medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
