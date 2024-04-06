import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:med_sal/controller/appointment-controller.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/widget/auth/custom-button.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(AppointmentControllerImp());
    return  Scaffold(
      body: GetBuilder<AppointmentControllerImp>(builder: (controller) => 
      NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) { 
          return[
             SliverAppBar(title:  const Text('Appointment' , 
                         style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w500),),
                         centerTitle: true,
                        // backgroundColor:  AppColor.backgroundAppbarColor,
                         expandedHeight: 70,
                         leading:IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios)))
                         ];}, 
          body:
           Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
             child: ListView(
              children:  [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppImageAsset.dcLanaAhmadImage),
                    Text('Dr. Lana Ahmad', 
                    style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w500 , color:AppColor.primaryDarkColor ),)
                  ],
                ),
                SizedBox(height: 30,),
                CustomButtonAuth(height: 50, width:double.infinity , text: 'Take appiontment' , color: AppColor.primaryDarkColor,
                onTap: () {
                  controller.selectDate();
                },),
                SizedBox(height: 30,),
                 Text('The choosed date :', 
                    style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color:AppColor.searchColor ),),
                     SizedBox(height: 20,),
                    Text( controller.selectedDate != null ? DateFormat('yyyy-MM-dd').format(controller.selectedDate!) : 'No date choose till now',
                    style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w500 , color:AppColor.searchColor ),
                    textAlign:TextAlign.center ,)
                
                    ], ),
           ),
      )),
    );
  }
}