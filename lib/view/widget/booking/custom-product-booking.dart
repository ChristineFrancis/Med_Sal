import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomProductBooking extends StatelessWidget {
  final String image;
  const CustomProductBooking({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 300,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10 , top: 10 , bottom: 10),
            margin: const EdgeInsets.only(top: 40 , left: 30),
            width: 300,
            height: 220,
            decoration: BoxDecoration(
              color: AppColor.cardColor,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: AppColor.primaryDarkColor),
              boxShadow:  [
                   BoxShadow( 
                    color:AppColor.primaryDarkColor,
                    offset: const Offset(0, 2), 
                    blurRadius: 4, 
                    spreadRadius:-2, 
                        ),],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Products 1' ,
                style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 25) ,),
                const CustomRowToWrite(text1: 'Company: ', text2: 'Name 1',),
                const CustomRowToWrite(text1: 'Quantity: ', text2: '2',),
                const CustomRowToWrite(text1: 'Description: ', text2: 'Easy to use',),
                const CustomRowToWrite(text1: 'Date of request: ', text2: 'MM / DD',),
            ],),
          ),
          Positioned(right: 28, bottom:155,
            child: Image.asset(image)),
        ],
      ),
    );
  }
}
class CustomRowToWrite extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomRowToWrite({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  Text(text1 ,style: TextStyle( fontSize: 18 ,fontWeight: FontWeight.w400, color: AppColor.primaryDarkColor ) ),
                  Text(text2 ,style: TextStyle( fontSize: 18 ,fontWeight: FontWeight.w400, color: AppColor.greyDarkColor ) ),
                  ],);
  }
}