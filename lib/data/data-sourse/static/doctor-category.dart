import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/view/screen/categories/dentistry.dart';
import 'package:med_sal/view/widget/categories/doctor-category.dart';

class DoctorCategoryData
{
  List <CustomDoctorCategory> doctorCategoryData=
  [
    CustomDoctorCategory(name: 'Dentistry' ,image:AppImageAsset.dentistryImage, 
              onTap: () { Get.to(DentistryPage(text1: 'Whitening Teeth', text2: 'Orthodontics', text3: 'Cleaning Teeth', image1: AppImageAsset.whiteningTeethImage, image2:AppImageAsset.orthodonticsImage, image3:AppImageAsset.cleaningTeethImage, bigImage: AppImageAsset.dentisryImage ,));} ,),
              CustomDoctorCategory(name: 'Optics' ,image:AppImageAsset.eyeglassesImage, 
              onTap: () { Get.to(DentistryPage(text1: 'Lasik eye surgery',text2: 'Lasek eye surgery',text3: 'Lasek eye surgery',bigImage:AppImageAsset.opticalImage,image1: AppImageAsset.whiteningTeethImage , image2: AppImageAsset.lasekEyeSurgery1,image3: AppImageAsset.lasekEyeSurgery2)); } ,),
              CustomDoctorCategory(name: 'Nutritionist' ,image:AppImageAsset.nutritionImage, onTap: () {  } ,),
              CustomDoctorCategory(name: 'Radiologist' ,image:AppImageAsset.radiologistImage, onTap: () {  } ,),
              CustomDoctorCategory(name: 'Home care' ,image:AppImageAsset.homeCareImage, onTap: () {  } ,),
              CustomDoctorCategory(name: 'Aesthetics' ,image:AppImageAsset.selfCareImage, onTap: () {  } ,),
  ];
}