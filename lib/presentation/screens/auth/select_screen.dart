import 'package:earthkeepers/presentation/resources/color_manager.dart';
import 'package:earthkeepers/presentation/resources/fonts.dart';
import 'package:earthkeepers/presentation/resources/images.dart';
import 'package:earthkeepers/presentation/resources/strings.dart';
import 'package:earthkeepers/presentation/resources/values.dart';
import 'package:earthkeepers/presentation/screens/auth/login_screen.dart';
import 'package:earthkeepers/presentation/screens/auth/sign_up_screen.dart';
import 'package:earthkeepers/presentation/widget/auth/build_card.dart';
import 'package:earthkeepers/presentation/widget/auth/default_button.dart';
import 'package:earthkeepers/presentation/widget/build_divider.dart';
import 'package:earthkeepers/presentation/widget/default_text.dart';
import 'package:earthkeepers/presentation/widget/navigator.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class SelectScreen extends StatelessWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: HeightSized.h8,
          left: HeightSized.h4,
          right:  HeightSized.h4
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child:  Image.asset(Images.logo2,
                height: HeightSized.h20,
                width: HeightSized.h25,
              ),
            ),
            SizedBox(height: HeightSized.h4,),
            DefaultText(text: Strings.letsIn,
                color: ColorManager.textColor1,
                fontSize: FontSized.s30,
                fontWeight: FontWeightManager.semiBold),
            SizedBox(height: HeightSized.h4,),
           const BuildCard(text: Strings.facebook, image: Images.facebook),
           SizedBox(height: HeightSized.h2,),
           const BuildCard(text: Strings.google, image: Images.google),
           SizedBox(height: HeightSized.h4),
            Row(
              children: [
                Expanded(child: BuildDivider(height: 0.3.h,)),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: WidthSized.w4
                  ),
                  child: DefaultText(
                      text: Strings.or,
                      color: ColorManager.iconColor,
                      fontSize: FontSized.s14,
                      fontWeight: FontWeightManager.semiBold),
                ),
                 Expanded(child: BuildDivider(height: 0.3.h,)),
              ],
            ),
            SizedBox(height: HeightSized.h4),
            DefaultButton(
                onPressed: (){
                  Navigators.navigateTo(context, LoginScreen());
                },
                text: Strings.signin,
                color: ColorManager.primary),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultText(
                    text: Strings.notHave,
                    color: ColorManager.textColor2,
                    fontSize: FontSized.s14,
                    fontWeight: FontWeightManager.regular),
                InkWell(
                  onTap: (){
                    Navigators.navigateTo(context, SignUpScreen());
                  },
                  child: DefaultText(
                      text: Strings.signup,
                      color: ColorManager.primary,
                      fontSize: FontSized.s14,
                      fontWeight: FontWeightManager.semiBold),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }


}
