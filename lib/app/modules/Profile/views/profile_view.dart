import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/app/data/profileTextfield.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 100.h,
      child: Stack(
        children: [
          Image.asset("assets/illustration/3235319.jpg"),
          Positioned(
            top: 20.h,
            child: Container(
              height: 80.h,
              width: 100.w,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 238, 238, 238),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
          ),
          Positioned(
            top: 12.h,
            left: 30.w,
            child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 238, 238, 238),
                radius: 80,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://1fid.com/wp-content/uploads/2022/07/girl-anime-wallaper-25.jpg",
                  ),
                  //maxRadius: double.infinity,
                  radius: 70,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 32.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Juliette Caif",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 11, 19, 63),
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 35.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "0032",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 11, 19, 63),
                      fontSize: 12.sp),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 38.h, left: 3.w, right: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfileTextField(
                    name: "Juliette Caif",
                    icon: Icons.person_3,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      const Text("Student Mo No."),
                      SizedBox(
                        width: 25.w,
                      ),
                      const Text("DOB"),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileSubTextField(
                        icon: Icons.call,
                        name: '9876543210',
                      ),
                      ProfileSubTextField(
                        icon: Icons.call,
                        name: '9876543210',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      const Text("Education"),
                      SizedBox(
                        width: 34.w,
                      ),
                      const Text("Qualification"),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileSubTextField(
                        icon: Icons.school_rounded,
                        name: 'BCA',
                      ),
                      ProfileSubTextField(
                        icon: Icons.quora_outlined,
                        name: 'Business',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "School/Colleage Name",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const ProfileTextField(
                    name: "OXFORD UNIVERSITY",
                    icon: Icons.school_rounded,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "Email Address",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const ProfileTextField(
                    name: "abc.xyz@gmail.com",
                    icon: Icons.mark_email_read_rounded,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "Course Name",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const ProfileTextField(
                    name: "Flutter Development",
                    icon: Icons.book_online,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "Father Name",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const ProfileTextField(
                    name: "Ugur Caif",
                    icon: Icons.person_4,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "Mother Name",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const ProfileTextField(
                    name: "Melike Jhondan Caif",
                    icon: Icons.person_2_rounded,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    children: [
                      const Text("Father Mo No."),
                      SizedBox(
                        width: 28.w,
                      ),
                      const Text("Mother Mo No."),
                    ],
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileSubTextField(
                        icon: Icons.call,
                        name: '9876543210',
                      ),
                      ProfileSubTextField(
                        icon: Icons.call,
                        name: '9876543210',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Text(
                    "Address",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const ProfileTextField(
                    name: "Surat, Gujarat",
                    icon: Icons.home_outlined,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
