import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/routes.dart';

class CustomDentistry extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String image1;
  final String image2;
  final String image3;
  final Function()? onTap;
  const CustomDentistry({super.key, required this.text1, required this.text2, required this.text3, required this.image1, required this.image2, required this.image3, this.onTap});

  @override
  Widget build(BuildContext context) {
    final bool isDark=Get.isDarkMode;
    return InkWell(
      onTap: onTap,
      child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                  margin: const EdgeInsets.only(top: 300 , bottom: 40),
                  decoration: BoxDecoration(
                    color: isDark? AppColor.darkModeColor: AppColor.whiteColor,
                    //color:Theme.of(context).colorScheme.onSecondaryContainer,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColor.primaryLightColor , width: 2),),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Padding(
                           padding: const EdgeInsets.symmetric(vertical: 15 , horizontal: 10),
                           child: TextField(
                                       decoration: InputDecoration(
                                         border: OutlineInputBorder( 
                                         borderSide: BorderSide(color:  AppColor.searchColor), 
                                         borderRadius: BorderRadius.circular(10)) ,
                                         hintText: 'Search', hintStyle: TextStyle(color:  AppColor.searchColor) , 
                                         suffixIconColor: AppColor.searchColor,
                                        contentPadding: const EdgeInsets.symmetric(vertical: 10 , horizontal:60) ,
                                        focusColor:  AppColor.searchColor
                                        ),),
                         ),
                                 Text('Lorem ipsum dolor sit amet consectetur. Eu enim lectus vitae urna.',
                                 style: TextStyle( fontSize: 18 ,fontWeight: FontWeight.w400, color: AppColor.primaryDarkColor ) ),
                                 SizedBox(height: 30,),
                                 Text('Services', 
                                 style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w500 , color:isDark? AppColor.whiteColor :AppColor.blackColor ),),
                                 CustomInfoServicesDentistry(text:text1 ,image:image1,),
                                 CustomInfoServicesDentistry(text:text2 ,image:image2 ,),
                                 CustomInfoServicesDentistry(text:text3 ,image:image3 ,),
                                 SizedBox(height: 30,),
                      ],),
                  ),
    );
  }
}
class CustomInfoServicesDentistry extends StatelessWidget {
  final String image;
  final String text;
  const CustomInfoServicesDentistry({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    final bool isDark=Get.isDarkMode;
    return Container(
     height: 120,
     margin: EdgeInsets.symmetric(vertical: 10),
     decoration: BoxDecoration(
      border: Border.all(color: AppColor.searchColor , width: 1),
      borderRadius: BorderRadius.circular(12),
     // color: Theme.of(context).colorScheme.secondaryContainer
      ),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
         Image.asset(image),
        Text(text, 
            style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w400 , color:isDark? AppColor.whiteColor :AppColor.blackColor ),),
        IconButton(onPressed: (){Get.toNamed(AppRoute.appointment);}, icon: Icon(Icons.arrow_forward_ios)),
                  
                                  ],),
                               );
  }
}