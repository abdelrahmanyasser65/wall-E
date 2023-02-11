import 'package:earthkeepers/presentation/resources/color_manager.dart';
import 'package:earthkeepers/presentation/resources/fonts.dart';
import 'package:earthkeepers/presentation/resources/values.dart';
import 'package:earthkeepers/presentation/widget/default_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class BuildNotificationItem extends StatelessWidget {
  const BuildNotificationItem({Key? key, required this.image, required this.title, required this.description, required this.date}) : super(key: key);
  final String image;
  final String title;
  final String description;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            child: Image.asset(
              image,
               height: HeightSized.h6,

              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 70.w,
                child: DefaultText(
                  maxLines: 2,
                  fontWeight: FontWeightManager.semiBold,
                  fontSize: 12.sp,
                  text: title,
                  color: ColorManager.primary,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              if (description.isNotEmpty) Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: 3.w
                        ),
                        height: 12.h,
                        width: 1.w,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      SizedBox(
                        width: 68.w,
                        child: DefaultText(
                          text: description,
                          fontWeight: FontWeightManager.semiBold,
                          fontSize: 12.sp,
                          color: ColorManager.textColor1,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                ],
              ) else Container(),

              DefaultText(
                text: date,
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
                color: ColorManager.grey,
              ),
            ],
          ),

        ],
      ),
    );
  }
}
