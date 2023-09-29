import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/appColors.dart';
import 'package:studentapp/app/data/appStrings.dart';

class CommonCard extends StatelessWidget {
  const CommonCard(
      {super.key,
      required this.name,
      required this.onPressed,
      required this.color});
  final String name;
  final VoidCallback onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return 
    
    InkWell(
      onTap: onPressed,
      child: Container(
        height: 10.h,
        width: double.infinity,
        child: Card(
          color: color,
          child: Row(children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(13)),
              child: const Icon(
                Icons.calendar_month,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
            )
          ]),
        ),
      ),
    );
  
  }
}
