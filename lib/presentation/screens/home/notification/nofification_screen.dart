import 'package:earthkeepers/data/notifaction_model.dart';
import 'package:earthkeepers/presentation/resources/color_manager.dart';
import 'package:earthkeepers/presentation/resources/strings.dart';
import 'package:earthkeepers/presentation/widget/build_divider.dart';
import 'package:earthkeepers/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatelessWidget {
  const  NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: ColorManager.white,
        title: DefaultText(
          text:Strings.notification ,
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
          color: ColorManager.textColor1,
        ),
      ),
      body: ListView.separated(
        physics:const BouncingScrollPhysics(),
        itemCount: 6,
        separatorBuilder: (context,index){
          return BuildDivider(

          height: 0.05.h,
          );
        },
        itemBuilder: (context,index){
          return itemNot[index];
        },
      ),
    );
  }
}
