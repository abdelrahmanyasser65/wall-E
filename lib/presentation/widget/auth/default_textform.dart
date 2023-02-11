import 'package:earthkeepers/presentation/resources/color_manager.dart';
import 'package:earthkeepers/presentation/resources/values.dart';
import 'package:flutter/material.dart';
class DefaultTextFormFiled extends StatelessWidget {
  const DefaultTextFormFiled({Key? key, required this.controller, required this.textInputType, required this.obscureText,
    required this.prefixIcon, this.hint=''}) : super(key: key);
  final TextEditingController controller;
  final TextInputType textInputType;
  final bool obscureText;
  final IconData prefixIcon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: HeightSized.h2
      ),
      //height: HeightSized.h6,
      child: TextFormField(
        onChanged: (val){},
        controller:controller,
        keyboardType: textInputType,
        cursorColor: Colors.grey,
        obscureText: obscureText,
        decoration: InputDecoration(

          prefixIcon: Icon(prefixIcon,
            color: ColorManager.iconColor,),
          // suffixIcon: controller.text.isNotEmpty?
          // Icon(Icons.verified_outlined,color: ColorManager.primary,)
          //     :null,
          filled: true,
          fillColor: Colors.black.withOpacity(0.05),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(HeightSized.h2),
              borderSide: BorderSide(
                width:0,
                color: Colors.black.withOpacity(0.05),
              )),
          hintText: hint,
          contentPadding:
           EdgeInsets.only(
              bottom: HeightSized.h1,
               left: HeightSized.h1,right: HeightSized.h1),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(HeightSized.h2),
              borderSide: BorderSide(
                width: 0,
                color: Colors.black.withOpacity(0.05),
              )),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(HeightSized.h2),
              borderSide: BorderSide(
                width: 0,
                color: Colors.black.withOpacity(0.05),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(HeightSized.h2),
              borderSide: BorderSide(
                width: 0,
                color: Colors.black.withOpacity(0.05),
              )),

        ),
      ),
    );
  }
}
