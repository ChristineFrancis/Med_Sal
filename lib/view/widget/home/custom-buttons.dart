import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:med_sal/controller/home-controller.dart';
import 'package:med_sal/view/widget/home/custom-button.dart';

class CustomButtonsHome extends StatelessWidget {
  const CustomButtonsHome({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controllerImp=Get.put(HomeControllerImp());
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: AnimateList(
        interval: 400.ms,
      effects: [FadeEffect(duration: 400.ms , delay: 700.ms , begin: 0 , end: 1)],
        children:[
         CustomButtonHome(textButton: 'Registar', onTap: () {controllerImp.goToRegisterPage() ; },),
         CustomButtonHome(textButton: 'Log In', onTap: () { controllerImp.goToLoginPage(); },),
         CustomButtonHome(textButton: 'Contact Us', onTap: () {  },),
   ] )),
    );
  }
}