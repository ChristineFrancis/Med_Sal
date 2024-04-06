import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomTextInsideContainerHome extends StatelessWidget {
  final String text;
  final String image;
  final double paddingTop;
  final double? paddingRight;
  final double? width;
  final double? height;
  final double? paddingLeft;
  const CustomTextInsideContainerHome({super.key, required this.text, required this.image, required this.paddingTop , this.paddingRight , this.width , this.height , this.paddingLeft});

  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              SvgPicture.asset( image , width:width ,height: height,),
              Padding(
               padding:  EdgeInsets.only(top: paddingTop , right: paddingRight! , left:paddingLeft! ),
               child: Center(child:
                 Text(text ,
                 style: TextStyle( fontSize: 22 ,fontWeight: FontWeight.w500, color: AppColor.primaryDarkColor ),)),
                       ),
                     ],);
  }
}