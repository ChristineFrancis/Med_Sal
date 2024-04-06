import 'package:flutter/cupertino.dart';
import 'package:med_sal/view/widget/categories/circle.dart';
import 'package:med_sal/view/widget/categories/subtitle.dart';
import 'package:med_sal/view/widget/home/custom-expanded.dart';

class CustomSubtitleProduct extends StatelessWidget {
  const CustomSubtitleProduct({Key? key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      width: double.infinity,
      child: const Row(
        children: [
          CustomSubtitleCategories(text: 'Products'),
          CustomExpanded(flex: 1),
           Padding(
                     padding: EdgeInsets.only(bottom: 50),
                      child: CustomCircle(),
                    ),
           CustomExpanded(flex: 2),
           Padding(
            padding: EdgeInsets.only(top: 70 , bottom: 20 ),
            child: CustomCircle(),
                 ),
           CustomExpanded(flex: 1),
  
        ],
      ),
    );
  }
}