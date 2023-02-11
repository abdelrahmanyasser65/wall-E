import 'package:earthkeepers/presentation/resources/color_manager.dart';
import 'package:earthkeepers/presentation/resources/fonts.dart';
import 'package:earthkeepers/presentation/resources/images.dart';
import 'package:earthkeepers/presentation/resources/strings.dart';
import 'package:earthkeepers/presentation/resources/values.dart';
import 'package:earthkeepers/presentation/widget/auth/center_side.dart';
import 'package:earthkeepers/presentation/widget/auth/default_button.dart';
import 'package:earthkeepers/presentation/widget/auth/default_textform.dart';
import 'package:earthkeepers/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
final  TextEditingController password=TextEditingController();
final  TextEditingController email=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.white,
      body:ListView(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(Images.leaf1,
              width:HeightSized.h12,),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: HeightSized.h4
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child:  Image.asset(Images.logo2,
                    height: HeightSized.h12,
                    width: HeightSized.h25,
                  ),
                ),
                SizedBox(
                  height: HeightSized.h4,
                ),
                CenterSideText(
                  text:Strings.letSign ,
                  fontS: FontSized.s20,
                  fontW: FontWeightManager.regular,
                  color: ColorManager.textColor1,
                ),
                SizedBox(
                  height: HeightSized.h1,
                ),
                CenterSideText(
                    color: ColorManager.textColor2,
                    text: Strings.welcome,
                    fontS: FontSized.s14,
                    fontW: FontWeightManager.light),

                SizedBox(
                  height: HeightSized.h4,
                ),
                DefaultText(
                    text: Strings.email,
                    color: ColorManager.textColor1,
                    fontSize: FontSized.s16,
                    fontWeight: FontWeightManager.medium),
                DefaultTextFormFiled(
                    controller: email,
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    prefixIcon: Icons.email),
                SizedBox(
                  height: HeightSized.h1,
                ),
                DefaultText(
                    text: Strings.password,
                    color: ColorManager.textColor1,
                    fontSize: FontSized.s16,
                    fontWeight: FontWeightManager.medium),
                DefaultTextFormFiled(
                    controller:password,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    prefixIcon: Icons.lock),
                SizedBox(height: HeightSized.h4),
                DefaultButton(text:Strings.signin,
                  onPressed: () {

                  },
                  color: ColorManager.primary,
                ),
                SizedBox(height: 3.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: DefaultText(
                      text: Strings.forget,
                      color: ColorManager.iconColor,
                      fontSize: FontSized.s14,
                      fontWeight: FontWeightManager.medium),
                ),

              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(Images.leaf2,
              width:HeightSized.h12,),
          ),
        ],
      ),

    );

  }
}
