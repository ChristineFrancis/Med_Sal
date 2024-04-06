import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder( 
              borderSide: BorderSide(color:  AppColor.searchColor), 
              borderRadius: BorderRadius.circular(10)) ,
              hintText: 'Search', hintStyle: TextStyle(color:  AppColor.searchColor) ,
              suffixIcon: const Padding( padding: EdgeInsets.only(right: 30.0),child: Icon(Icons.search),) , 
              suffixIconColor: AppColor.searchColor,
             contentPadding: const EdgeInsets.symmetric(vertical: 20 , horizontal:30) ,
             focusColor:  AppColor.searchColor
             ),);
  }
}