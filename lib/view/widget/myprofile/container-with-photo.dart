import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_sal/core/constant/color.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/view/widget/home/custom-expanded.dart';

class ContainerWithProfilePhoto extends StatelessWidget {
  const ContainerWithProfilePhoto({super.key});
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
    return 
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: Get.size.height / 2,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          const CustomExpanded(flex: 2),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoute.setting);
                },
                child: Icon(
                  Icons.settings_outlined,
                  color: isDarkMode ? AppColor.primaryLightColor : Colors.black,
                ),
              ),
              const CustomExpanded(flex: 1),
              Center(
                child: Text(
                  '5'.tr,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color:isDarkMode  ? AppColor.primaryLightColor : AppColor.blackColor),
                ),
              ),
              const CustomExpanded(flex: 1),
            ],
          ),
          const CustomExpanded(flex: 1),
          Image.asset(AppImageAsset.myProfilePhotoImage),
          const CustomExpanded(flex: 1),
           Text('6'.tr, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500 , color: isDarkMode  ? AppColor.whiteColor : AppColor.blackColor)),
          const CustomExpanded(flex: 2),
        ],
      ),
    );
  }
}



class ContainerWithProfilePhotoServiceProvider extends StatelessWidget {
  const ContainerWithProfilePhotoServiceProvider({super.key});
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Get.isDarkMode;
    return 
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: Get.size.height / 2,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          const CustomExpanded(flex: 2),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(AppRoute.setting);
                },
                child: Icon(
                  Icons.settings_outlined,
                  color: isDarkMode ? AppColor.primaryLightColor : Colors.black,
                ),
              ),
              const CustomExpanded(flex: 1),
              Center(
                child: Text(
                  '5'.tr,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color:isDarkMode  ? AppColor.primaryLightColor : AppColor.blackColor),
                ),
              ),
              const CustomExpanded(flex: 1),
            ],
          ),
          const CustomExpanded(flex: 1),
          Image.asset(AppImageAsset.myProfilePhotoImage),
          const CustomExpanded(flex: 1),
           Text('10'.tr, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500 , color: isDarkMode  ? AppColor.whiteColor : AppColor.blackColor)),
          const CustomExpanded(flex: 2),
        ],
      ),
    );
  }
}
