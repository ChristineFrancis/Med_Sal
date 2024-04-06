import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/widget/home/custom-expanded.dart';
import 'package:med_sal/view/widget/home/custome-icon-appbar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            //color: AppColor.backgroundAppbarColor,
          border: Border(bottom: BorderSide(color:AppColor.primaryDarkColor , width: 2 ) ,
                         right:BorderSide(color:AppColor.primaryDarkColor  , width: 3) )),
          height: 80,
          padding: const EdgeInsets.only(top: 30),
          
          child: const Row(
            children: [
          CustomExpanded(flex: 1,),
          CustomIconAppbar(icon: AppImageAsset.iconPersonImage ),
          CustomExpanded(flex: 2),
          CustomIconAppbar(icon: AppImageAsset.iconCallImage),
          CustomExpanded(flex: 3),
          CustomIconAppbar(icon:AppImageAsset.iconAlternateEmailImage),
          CustomExpanded(flex: 7),
          Padding(
            padding: EdgeInsets.only(top: 13),
            child: CustomIconAppbar(icon: AppImageAsset.iconLanguageImage,)
                  ),
          CustomExpanded(flex: 2),
          CustomIconAppbar(icon:  AppImageAsset.iconFilterImage , height:30 ,),
            CustomExpanded(flex: 2),
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child:CustomIconAppbar(icon:AppImageAsset.iconListImage , width: 30,),
                  ),
          CustomExpanded(flex: 1),
                ]),
        );
  }
}