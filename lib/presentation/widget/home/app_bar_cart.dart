import 'package:earthkeepers/presentation/resources/color_manager.dart';
import 'package:earthkeepers/presentation/resources/fonts.dart';
import 'package:earthkeepers/presentation/resources/images.dart';
import 'package:earthkeepers/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

 defaultAppBar(context,text){
  return AppBar(
    leading: Padding(
      padding: EdgeInsets.only(
          left: 5.w
      ),
      child: IconButton(
        icon: Image.asset(Images.arrowIcon),

        onPressed: (){
          Navigator.pop(context);
        },
      ),
    ),
    backgroundColor: ColorManager.white,
    elevation: 0,
    centerTitle: true,
    title: DefaultText(
      text: text,
      color: ColorManager.textColor1,
      fontSize: FontSized.s20,
      fontWeight: FontWeightManager.bold
      ,
    ),
  );
}
