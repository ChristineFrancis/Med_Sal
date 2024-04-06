import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/view/widget/myprofile/container-with-photo.dart';
import 'package:med_sal/view/widget/myprofile/divider.dart';
import 'package:med_sal/view/widget/myprofile/personal-info.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Column(
        children: [
         ContainerWithProfilePhoto(),
         CustomPersonalInfo(title: '7'.tr, info: 'yourname @mail.com', icon:Icons.mail_outlined,),
         CustomDivider(),
         CustomPersonalInfo(title: '8'.tr, info: '08954752516', icon:Icons.phone_outlined,),
         CustomDivider(),
         CustomPersonalInfo(title: '9'.tr, info: '25 / 10 / 2023', icon:Icons.date_range_outlined,),
      ],),
    );
  }
}