import 'package:flutter/material.dart';
import 'package:med_sal/view/widget/custom-detntistry.dart';

class DentistryPage extends StatelessWidget {
   final String text1;
  final String text2;
  final String text3;
  final String image1;
  final String image2;
  final String image3;
  final String bigImage;
  const DentistryPage({super.key, required this.text1, required this.text2, required this.text3, required this.image1, required this.image2, required this.image3, required this.bigImage});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(bigImage,width: double.infinity,),
              CustomDentistry(text1: text1, text2: text2, text3: text3, image1:image1, image2: image2, image3: image3,),
            ],),
        ],
      ),
    );
  }
}