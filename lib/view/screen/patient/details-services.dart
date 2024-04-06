import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/screen/patient/my-order.dart';
import 'package:med_sal/view/widget/auth/custom-button.dart';
import 'package:med_sal/view/widget/home/custom-expanded.dart';

class DetailsServicesPage extends StatelessWidget {
  const DetailsServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        title: const Text('Details' ),
        titleTextStyle:  TextStyle(fontWeight: FontWeight.bold , fontSize: 22 , color:AppColor.blackColor ),
        leading:IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor:AppColor.whiteColor ,
      ),
      body: Stack(
        children: [
          Image.asset(AppImageAsset.serviceDertailsImage),
          Container(
                  padding: const EdgeInsets.only(left: 10 , top: 12 , right: 1),
              margin: const EdgeInsets.only(top: 250 , left: 20 , right: 20 , bottom: 40),
            //  width: 360,
            //  height: 450,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppColor.primaryLightColor , width: 2),),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                    padding: const EdgeInsets.only(left:20, bottom: 2),
                    child: Text('Service Name' ,
                        style: TextStyle(fontSize: 23 , color: AppColor.primaryDarkColor , fontWeight: FontWeight.w500) ,),
                  ),
                    const CustomTextRowDetaildSevices(text1: 'Time requested: ', text2: '30min',),
                    const CustomTextRowDetaildSevices(text1: 'Cost: ', text2: 'Cost 1',),
                    const CustomTextRowDetaildSevices(text1: 'Discount: ', text2: '10%',),
                    const CustomTextRowDetaildSevices(text1: 'Description: '),
                    Text('Lorem ipsum dolor sit amet consectetur. Eget quis faucibus erat semper tincidunt posuere lorem tellus integer. Sapien in neque metus felis luctus. Lorem purus nibh pharetra nulla amet risus sed at nisi.',
                    style: TextStyle( fontSize: 18 ,fontWeight: FontWeight.w400, color: AppColor.blackColor ) ),
                    const CustomExpanded(flex: 1),
                    Center(child: CustomButtonAuth(height: 50 ,width: 250,text: 'Buy Now',color: AppColor.primaryDarkColor,onTap: () {
                      Get.to(MyOrder());
                    },)),
                    const CustomExpanded(flex: 1),
                  ],),)
        ],),
    );
  }
}
class CustomTextRowDetaildSevices extends StatelessWidget {
  final String? text1;
  final String? text2;
  const CustomTextRowDetaildSevices({super.key,  this.text1,  this.text2});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
       Text(text1 ==null ? '' : text1!,style: TextStyle( fontSize: 18 ,fontWeight: FontWeight.w400, color: AppColor.primaryLightColor ) ),
       Text(text2 ==null ? '' : text2!,style: TextStyle( fontSize: 18 ,fontWeight: FontWeight.w400, color: AppColor.blackColor ) ),
                  ],);
  }
}