import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({super.key, required this.name, required this.icon});
  final String name;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 5.h,
        width: 100.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            SizedBox(
              width: 4.w,
            ),
            Icon(icon),
            SizedBox(
              width: 4.w,
            ),
            Text(
              name,
              style: TextStyle(
                  color: Color.fromARGB(255, 11, 19, 63),
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp),
            )
          ],
        ));
  }
}

class ProfileSubTextField extends StatelessWidget {
  const ProfileSubTextField(
      {super.key, required this.name, required this.icon});
  final String name;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 5.h,
        width: 45.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            SizedBox(
              width: 4.w,
            ),
            Icon(icon),
            SizedBox(
              width: 4.w,
            ),
            Text(
              name,
              style: TextStyle(
                  color: Color.fromARGB(255, 11, 19, 63),
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp),
            )
          ],
        ));
  }
}
