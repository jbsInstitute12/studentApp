import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/fontFamily.dart';

class CommonTextFormFieldView extends GetView {
  String? title;
  String? hintText;
  String? Function(String?)? validator;
  double? shadowWeight;
  TextEditingController? con;
  Color? fillColors;
  bool? filled;
  IconData? prefix;
  bool? readonly;
  int? maxLines;
  double? height;
  TextInputType? inputType;
  TextOverflow? overfloe;

  CommonTextFormFieldView(
      {Key? key,
      this.title,
      this.hintText,
      this.validator,
      this.con,
      this.filled,
      this.fillColors,
      this.prefix,
      this.overfloe,
      this.height,
      this.maxLines,
      this.readonly,
      this.inputType,
      this.shadowWeight})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: shadowWeight ?? 4.sp,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.sp)),
      child: TextFormField(
        controller: con ?? null,
        validator: validator,
        readOnly: readonly ?? false,
        maxLines: maxLines ?? null,
        cursorColor: Colors.red,
        
        keyboardType: inputType ?? null,
      
        decoration: InputDecoration(
        
            contentPadding: EdgeInsets.only(left: 4.w),
            // prefixIcon:Icon(),
            prefixIcon: prefix != null ? Icon(prefix) : null,
            iconColor: Colors.grey,
            focusColor: AppColors.redColor,
            prefixIconColor: Colors.grey,


            // hoverColor: AppColors.redColor,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.sp),
                borderSide: BorderSide.none),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.sp),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.sp),
                borderSide: BorderSide.none),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.sp),
                borderSide: BorderSide.none),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.sp),
                borderSide: BorderSide.none),
            hintText: hintText ?? "Mobile Number",
            hintStyle: TextStyle(
                color: AppColors.greyTextColor,
                letterSpacing: 1,
                fontFamily: FontFamily.popins,
                fontWeight: FontWeight.w800),
            filled: filled ?? true,
            fillColor: fillColors ?? AppColors.geryColor),
      ),
    );
  }
}
