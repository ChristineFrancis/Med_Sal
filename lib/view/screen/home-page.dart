import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:med_sal/controller/home-controller.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/widget/home/custom-appbar.dart';
import 'package:med_sal/view/widget/home/custom-buttons.dart';
import 'package:med_sal/view/widget/home/custom-client.dart';
import 'package:med_sal/view/widget/home/custom-doctors-pic.dart';
import 'package:med_sal/view/widget/home/custom-info.dart';
import 'package:med_sal/view/widget/home/custom-opinions.dart';
import 'package:med_sal/view/widget/home/custom-search.dart';
import 'package:med_sal/view/widget/home/custom-services.dart';
import 'package:med_sal/view/widget/home/custom-text-inside-container.dart';
import 'package:med_sal/view/widget/home/custom-text-inside-green-container.dart';
import 'package:med_sal/view/widget/home/custom-text.dart';
import 'package:med_sal/view/widget/home/custom-title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return  Scaffold(
      body: ListView(    
      children:[
        const CustomAppBar(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
          const Center(child: CustomTitle()),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child:CustomSearch() ), 
          const CustomButtonsHome() ,
          const IntroProHome(),
          Text('Get The Best Health Care \nServices For a More Comfortable\nLife.' ,
                 style: TextStyle( fontSize: 30 ,fontWeight: FontWeight.w500, color: AppColor.primaryDarkColor ),),
          const CustomText(text:"Don't let illness or ill health sneak up on you.\nSo, get our health services, and get your most \nup-to-date health information form in over \n155,000 compatible and clinically verified \n medical journals."),
          const Padding(
                   padding: EdgeInsets.only(left: 200 , top: 20),
                   child: CustomTextInsideContainerHome(text: 'About Us', image:  AppImageAsset.aboutUsHome,paddingTop: 35,paddingRight: 0, paddingLeft: 12,)
                 ),
          const TextInsideGreenContainer(),
          const CustomServicesHome(),
          const CustomDoctorsPic(),
          const CustomOpinionsHome(),
          const CustomClient(),  
          ],),
        ),
        ]),
    );
  }
}