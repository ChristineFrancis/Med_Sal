import 'package:flutter/material.dart';
import 'package:med_sal/core/constant/color.dart';

class SeeAllText extends StatelessWidget {
  const SeeAllText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                          children: [
                            Text("See All" , 
                                style: Theme.of(context).textTheme.displayLarge!.copyWith(color: AppColor.greenLightColor),),
                                Icon(Icons.arrow_right_alt , size: 40, color: AppColor.greenLightColor)

                          ],
                        );
  }
}