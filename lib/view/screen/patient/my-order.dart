import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/widget/auth/custom-button.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) { 
          return[
             SliverAppBar(title:  const Text('My Order' , 
                         style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w500),),
                         centerTitle: true,
                         backgroundColor:  AppColor.backgroundAppbarColor,
                         expandedHeight: 70,
                         leading:IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios)))
                         ];}, 
          body:
           ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Pleas Determine Place of Delivery' , style: TextStyle(color: AppColor.searchColor , fontSize: 17),),
              ),
              Image.asset(AppImageAsset.placeImage),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Text('Pleas Determine Place of Delivery' , style: TextStyle(color: AppColor.searchColor ,  fontSize: 17),),
               ),
               Image.asset(AppImageAsset.groupOfImagesImage),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Text('Enter your information' , style: TextStyle(color: AppColor.searchColor ,  fontSize: 17),),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 20 , top: 15),
                 child: Text('Card number' , style: TextStyle(color: AppColor.searchColor ,  fontSize: 17),),
               ),
               Container(
                height: 50,
                padding: EdgeInsets.only(left: 15 , top: 10),
                margin: EdgeInsets.only(left: 20 , right: 20 , top: 5 , bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColor.searchColor)
                ),
                child: Text('975412863.015633',style: TextStyle(fontSize: 17),),
               ),

               Padding(
                 padding: const EdgeInsets.only(left: 20 , top: 15),
                 child: Text('Name on card' , style: TextStyle(color: AppColor.searchColor ,  fontSize: 17),),
               ),
               Container(
                height: 50,
                padding: EdgeInsets.only(left: 15 , top: 10),
                margin: EdgeInsets.only(left: 20 , right: 20 , top: 5 , bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColor.searchColor)
                ),
                child: Text('Ali Ahmad',style: TextStyle(fontSize: 17),),
               ),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                     padding: const EdgeInsets.only(left: 20 , top: 15),
                     child: Text('Exp date' , style: TextStyle(color: AppColor.searchColor ,  fontSize: 17),),
                                    ),

                  Container(
                height: 50, width: 130,
                padding: EdgeInsets.only(left: 15 , top: 10),
                margin: EdgeInsets.only(left: 20 , right: 20 , top: 5 , bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColor.searchColor)
                ),
                child: Text('12/11/2025',style: TextStyle(fontSize: 17),),
               ),

                   ],
                 ),
               

               Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                     padding: const EdgeInsets.only(left: 20 , top: 15),
                     child: Text('CVV/ CVC' , style: TextStyle(color: AppColor.searchColor ,  fontSize: 17),),
                                    ),

                  Container(
                height: 50, width: 130,
                padding: EdgeInsets.only(left: 15 , top: 10),
                margin: EdgeInsets.only(left: 20 , right: 20 , top: 5 , bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColor.searchColor)
                ),
                child: Text('7894856',style: TextStyle(fontSize: 17),),
               ),

                   ],
                 ),
               ],),
           
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
                child: CustomButtonAuth(height: 60, width: double.infinity, text: 'Confirm' , color: AppColor.primaryDarkColor,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
                child: CustomButtonAuth(height:60, width: double.infinity, text: 'Cancel' , color:Colors.red,),
              ),
                  ],
                        ),
      ),
    );
  }
}