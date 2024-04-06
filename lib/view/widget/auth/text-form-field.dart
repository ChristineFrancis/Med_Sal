import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:med_sal/core/constant/color.dart';

class CustomTextFormFieldAuth extends StatelessWidget {
  final String hintTextAuth;
  final String labelTextAuth;
  final   suffixIconAuth;
  //final TextEditingController controllerAuth;
 // final String? Function(String?) valid;
  //final bool isNum;
  const CustomTextFormFieldAuth({super.key, required this.hintTextAuth, required this.labelTextAuth, required this.suffixIconAuth,
   //required this.controllerAuth, required this.valid, required this.isNum
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical:25 , horizontal: 20),
      child: TextFormField(
       // keyboardType:isNum ? TextInputType.numberWithOptions(decimal: true) : TextInputType.text ,
        //validator: valid,
       // controller: controllerAuth,
              decoration: InputDecoration(
                hintStyle:  TextStyle(fontSize: 15 , color: AppColor.searchColor , fontWeight: FontWeight.w400),
                hintText: hintTextAuth,
                floatingLabelBehavior:FloatingLabelBehavior.always ,
                contentPadding:const EdgeInsets.symmetric( horizontal: 30 , vertical: 20) ,
                label: Container(margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(labelTextAuth ,
                          style:const TextStyle(fontWeight: FontWeight.w500 , fontSize: 22),)).animate().scaleY(duration: 1000.ms),
                suffixIcon: Icon(suffixIconAuth , color:AppColor.searchColor ,),
                 border: OutlineInputBorder( borderRadius: BorderRadius.circular(10))),),
    );
  }
}