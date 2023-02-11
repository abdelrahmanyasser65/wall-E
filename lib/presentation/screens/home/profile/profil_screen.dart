import 'package:earthkeepers/presentation/resources/color_manager.dart';
import 'package:earthkeepers/presentation/resources/fonts.dart';
import 'package:earthkeepers/presentation/resources/images.dart';
import 'package:earthkeepers/presentation/resources/strings.dart';
import 'package:earthkeepers/presentation/widget/default_text.dart';
import 'package:earthkeepers/presentation/widget/profile/card_profile.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(
          children: [
            Stack(
              children: [
                Image.asset(
                  Images.cover,
                  height: 50.h,
                  width:double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.80),
                  height: 43.4.h,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          // top: 40, left: 24, right: 24, bottom: 20
                            bottom: 3.h,
                            left: 4.w,
                          right: 4.w,
                          top: 6.h
                        ),
                        child:  Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                                size: 3.h,
                              )),
                        )
                      ),
                      Container(
                        width: 35.w,
                        height: 15.h,
                        decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image:
                            AssetImage(Images.profile),
                                fit: BoxFit.cover)
                        ),

                      ),

                      Text(
                        Strings.nameUser,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(
                    top: 38.h
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 8.h,
                    horizontal: 6.w
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 3.h
                      ),
                      padding: EdgeInsets.all(2.h),
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorManager.secondPrimary
                      ),
                      child: Row(
                        children: [
                          Image.asset(Images.stars,

                          ),
                          SizedBox(
                            width: 4.5.w,
                          ),
                          DefaultText(
                            text: Strings.points,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.textColor1,
                          )
                        ],
                      ),
                    ),
                    DefaultText(
                      text: "Edit Profile",
                      fontWeight: FontWeightManager.semiBold,
                      fontSize: 15.sp,
                      color: ColorManager.textColor1,
                    ),

                    CardProfile(
                      text: Strings.changeName,
                      function: (){
                        //Navigators.navigateTo(context, ChangeNameScreen());
                      },
                    ),
                    CardProfile(

                        text:  Strings.changeEmail,
                        function: (){
                          //Navigators.navigateTo(context, ChangeNameScreen());
                        }),
                    SizedBox(
                      height: 1.3.h,
                    ),

                  ],
                )
            ),
          ],
        )
    );
  }
}
