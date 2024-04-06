import 'package:flutter/material.dart';
import 'package:med_sal/view/widget/categories/circle.dart';
import 'package:med_sal/view/widget/categories/subtitle.dart';
import 'package:med_sal/view/widget/home/custom-expanded.dart';

class CustomSubTitleService extends StatelessWidget {
  const CustomSubTitleService({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      child:  const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomSubtitleCategories(text: 'Services',),
          CustomExpanded(flex: 3),
          Padding(
            padding: EdgeInsets.only(top: 100 , bottom: 10),
          
            child: CustomCircle(),
                      ),
          CustomExpanded(flex:1),
        ], ),
    );
  }
}