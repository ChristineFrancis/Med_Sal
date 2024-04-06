import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomServiceBooking extends StatelessWidget {
  final String serviceName;
  final String serviceNum;
  final Function() onTap;
  const CustomServiceBooking({super.key, required this.serviceName, required this.serviceNum, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 10 , top: 12 , right: 1),
                margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
              //  width: 360,
                height: 250,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: AppColor.primaryDarkColor),
                  boxShadow:  [
                       BoxShadow( 
                        color:AppColor.searchColor,
                        offset: const Offset(2, 0), 
                        blurRadius: 9, 
                        //spreadRadius:-2, 
                            ),],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:9, bottom: 2),
                      child: Text('Service $serviceNum' ,
                          style: TextStyle(fontSize: 23 , color: AppColor.primaryDarkColor , fontWeight: FontWeight.w500) ,),
                    ),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Services name' ,style: TextStyle( fontSize:20 ,fontWeight: FontWeight.w400, color: AppColor.primaryLightColor ) ),
                                Text('Doctor name' ,style: TextStyle( fontSize: 20 ,fontWeight: FontWeight.w400, color: AppColor.primaryLightColor ) ),
                                Text('Descreption' ,style: TextStyle( fontSize: 20 ,fontWeight: FontWeight.w400, color: AppColor.primaryLightColor ) ),
                                Text('Source' ,style: TextStyle( fontSize: 20 ,fontWeight: FontWeight.w400, color: AppColor.primaryLightColor ) ),
                                Text('Cost' ,style: TextStyle( fontSize: 20 ,fontWeight: FontWeight.w400, color: AppColor.primaryLightColor ) ),
                                Text('Date & Time' ,style: TextStyle( fontSize: 20 ,fontWeight: FontWeight.w400, color: AppColor.primaryLightColor ) ),
                            ],),
                            Column(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(serviceName ,style: TextStyle( fontSize: 20 ,fontWeight: FontWeight.w400, color: AppColor.blackColor ) ),
                                Text('Name$serviceNum' ,style: TextStyle( fontSize: 20 ,fontWeight: FontWeight.w400, color: AppColor.blackColor ) ),
                                Text('Easy and fast' ,style: TextStyle( fontSize: 20 ,fontWeight: FontWeight.w400, color: AppColor.blackColor ) ),
                                Text('Clinic$serviceNum' ,style: TextStyle( fontSize: 20 ,fontWeight: FontWeight.w400, color: AppColor.blackColor ) ),
                                Text('12\$' ,style: TextStyle( fontSize: 20 ,fontWeight: FontWeight.w400, color: AppColor.blackColor ) ),
                                Text('Wed,30Oct,10-10:3Am' ,style: TextStyle( fontSize: 20 ,fontWeight: FontWeight.w400, color: AppColor.blackColor ) ),
                            ],),
                          ],)
                  ], ),
        ),
      ),
    );
  }
}