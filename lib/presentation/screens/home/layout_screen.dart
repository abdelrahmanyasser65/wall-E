import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:earthkeepers/data/layout_model.dart';
import 'package:earthkeepers/presentation/resources/images.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
class AppLayout extends StatefulWidget {
 const AppLayout({Key? key}) : super(key: key);

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int index=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.green,
        color: Colors.white,
        height: 60,
        index: index,
        items: [

          SvgPicture.asset(Images.leafIcon,
            color: index==0?Colors.white:Colors.black,
          ),
          SvgPicture.asset(Images.scanIcon,
            color: index==1?Colors.white:Colors.black,),
          SvgPicture.asset(Images.homeIcon,
            color: index==2?Colors.white:Colors.black,),
          SvgPicture.asset(Images.notificationIcon,
            color: index==3?Colors.white:Colors.black,),
          SvgPicture.asset(Images.profileIcon,
            color: index==4?Colors.white:Colors.black,),
        ],
        onTap: (val){
         setState(() {
           index=val;
         });
        },
      ),
    );
  }
}
