import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/widget/custom-aviable-doctors.dart';

class AviableDoctorsPage extends StatelessWidget {
  const AviableDoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(AppImageAsset.aviableDoctorImage,width: double.infinity,),
             CustomAviableDoctors(),
            ],),
        ],
      ),
    );
  }
}