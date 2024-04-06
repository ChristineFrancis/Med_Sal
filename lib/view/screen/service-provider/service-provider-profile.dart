import 'package:flutter/material.dart';
import 'package:med_sal/view/widget/myprofile/container-with-photo.dart';
import 'package:med_sal/view/widget/myprofile/divider.dart';
import 'package:med_sal/view/widget/myprofile/personal-info.dart';

class SErviceProviderProfile extends StatelessWidget {
  const SErviceProviderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:  Column(
        children: [
         ContainerWithProfilePhotoServiceProvider(),
         CustomPersonalInfo(title: 'Email', info: 'yourname @mail.com', icon:Icons.mail_outlined,),
         CustomDivider(),
         CustomPersonalInfo(title: 'Phone', info: '0987654321', icon:Icons.phone_outlined,),
      ],),
    );
  }
}