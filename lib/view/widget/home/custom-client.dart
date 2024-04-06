import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_sal/core/constant/image-asset.dart';

class CustomClient extends StatelessWidget {
  const CustomClient({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Stack(
               children: [
                 SvgPicture.asset(AppImageAsset.clientImageHomeSvg),
                 Positioned(bottom: 45,right: 0,
                   child: Image.asset(AppImageAsset.clientPersonalPicHomepng),
                 )
               ], ),
    );
  }
}