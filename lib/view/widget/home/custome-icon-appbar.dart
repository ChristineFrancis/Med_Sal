import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconAppbar extends StatelessWidget {
  final String? icon;
  final double? height;
  final double? width;
  const CustomIconAppbar({super.key, required this.icon , this.height ,  this.width});

  @override
  Widget build(BuildContext context) {
    return  InkWell(child: SvgPicture.asset(icon! , height:height , width: width,));
  }
}