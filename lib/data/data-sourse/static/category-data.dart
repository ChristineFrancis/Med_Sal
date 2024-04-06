import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:med_sal/controller/categories-controller.dart';
import 'package:med_sal/core/constant/image-asset.dart';
import 'package:med_sal/data/model/category-model.dart';
import 'package:med_sal/view/widget/categories/categories-descreption.dart';

class CategoriesData
{
  
 // late List<CustomCategoriesDescreption> categories;

  static List categoriesData=
  [
     CategoriesModel(name: 'Doctor' ,titleDetails:'Doctors', imageCategories:AppImageAsset.categoryDoctorImage,
    image1DetailsServices: AppImageAsset.serviceHospital1Image ,image2DetailsServices: AppImageAsset.serviceHospital2Image , image3DetailsServices:AppImageAsset.serviceHospital1Image ,image4DetailsServices: AppImageAsset.serviceHospital2Image,
    image1DetailsProducts: AppImageAsset.productHospital1Image , image2DetailsProducts:AppImageAsset.productHospital2Image , image3DetailsProducts:AppImageAsset.productHospital1Image , image4DetailsProducts:AppImageAsset.productHospital1Image),

    CategoriesModel(name: 'Pharmacy' ,titleDetails:'Pharmacies', imageCategories:AppImageAsset.categoryPharmacyImage,
    image1DetailsServices: AppImageAsset.servicePharmacy1Image ,image2DetailsServices: AppImageAsset.servicePharmacy2Image , image3DetailsServices:AppImageAsset.servicePharmacy3Image ,image4DetailsServices: AppImageAsset.servicePharmacy4Image,
    image1DetailsProducts: AppImageAsset.productPharmacy1Image , image2DetailsProducts:AppImageAsset.productPharmacy2Image , image3DetailsProducts:AppImageAsset.productPharmacy3Image , image4DetailsProducts:AppImageAsset.productPharmacy4Image),
    
    CategoriesModel(name: 'Hospital' ,titleDetails:'Hospitals', imageCategories:AppImageAsset.categoryDoctorImage,
    image1DetailsServices: AppImageAsset.serviceHospital1Image ,image2DetailsServices: AppImageAsset.serviceHospital2Image , image3DetailsServices:AppImageAsset.serviceHospital1Image ,image4DetailsServices: AppImageAsset.serviceHospital2Image,
    image1DetailsProducts: AppImageAsset.productHospital1Image , image2DetailsProducts:AppImageAsset.productHospital2Image , image3DetailsProducts:AppImageAsset.productHospital1Image , image4DetailsProducts:AppImageAsset.productHospital1Image),
   
    CategoriesModel(name: 'Lab' ,titleDetails:'Labs', imageCategories:AppImageAsset.categoryLabImage,
    image1DetailsServices: AppImageAsset.serviceLab1Image ,image2DetailsServices: AppImageAsset.serviceLab2Image , image3DetailsServices:AppImageAsset.serviceLab3Image ,image4DetailsServices: AppImageAsset.serviceLab4Image,
    image1DetailsProducts: AppImageAsset.productLab1Image, image2DetailsProducts:AppImageAsset.productLab2Image , image3DetailsProducts:AppImageAsset.productLab3Image , image4DetailsProducts:AppImageAsset.productLab4Image),
    
     CategoriesModel(name: 'Clinic' ,titleDetails:'Clinic', imageCategories:AppImageAsset.categoryClinicImage,
    image1DetailsServices: AppImageAsset.serviceClinic1Image ,image2DetailsServices: AppImageAsset.serviceClinic2Image , image3DetailsServices:AppImageAsset.serviceClinic3Image ,image4DetailsServices: AppImageAsset.serviceClinic4Image,
    image1DetailsProducts: AppImageAsset.productClinic1Image, image2DetailsProducts:AppImageAsset.productClinic2Image , image3DetailsProducts:AppImageAsset.productClinic3Image , image4DetailsProducts:AppImageAsset.productClinic4Image),

  ];

  static final controllerImp = Get.put(CategoriesControllerImp());
 
 // CategoriesData(){
  List<CustomCategoriesDescreption>  categories = 
   
   //CategoriesControllerImp() {
    //categories = 
   [
    CustomCategoriesDescreption(name:CategoriesData.categoriesData[0].name, titleDetails: CategoriesData.categoriesData[0].titleDetails, imageCategories: CategoriesData.categoriesData[0].imageCategories,
     image1DetailsServices: CategoriesData.categoriesData[0].image1DetailsServices, image2DetailsServices: CategoriesData.categoriesData[0].image2DetailsServices, image3DetailsServices: CategoriesData.categoriesData[0].image3DetailsServices, image4DetailsServices: CategoriesData.categoriesData[0].image4DetailsServices,
    image1DetailsProducts: CategoriesData.categoriesData[0].image1DetailsProducts, image2DetailsProducts: CategoriesData.categoriesData[0].image2DetailsProducts, image3DetailsProducts: CategoriesData.categoriesData[0].image3DetailsProducts, image4DetailsProducts: CategoriesData.categoriesData[0].image4DetailsProducts,
    index:controllerImp.currentIndex, ),
   
   CustomCategoriesDescreption(name:CategoriesData.categoriesData[1].name, titleDetails: CategoriesData.categoriesData[1].titleDetails, imageCategories: CategoriesData.categoriesData[1].imageCategories,
     image1DetailsServices: CategoriesData.categoriesData[1].image1DetailsServices, image2DetailsServices: CategoriesData.categoriesData[1].image2DetailsServices, image3DetailsServices: CategoriesData.categoriesData[1].image3DetailsServices, image4DetailsServices: CategoriesData.categoriesData[1].image4DetailsServices,
    image1DetailsProducts: CategoriesData.categoriesData[1].image1DetailsProducts, image2DetailsProducts: CategoriesData.categoriesData[1].image2DetailsProducts, image3DetailsProducts: CategoriesData.categoriesData[1].image3DetailsProducts, image4DetailsProducts: CategoriesData.categoriesData[1].image4DetailsProducts , 
     index: controllerImp.currentIndex,),

    CustomCategoriesDescreption(name:CategoriesData.categoriesData[2].name, titleDetails: CategoriesData.categoriesData[2].titleDetails, imageCategories: CategoriesData.categoriesData[2].imageCategories,
     image1DetailsServices: CategoriesData.categoriesData[2].image1DetailsServices, image2DetailsServices: CategoriesData.categoriesData[2].image2DetailsServices, image3DetailsServices: CategoriesData.categoriesData[2].image3DetailsServices, image4DetailsServices: CategoriesData.categoriesData[2].image4DetailsServices,
    image1DetailsProducts: CategoriesData.categoriesData[2].image1DetailsProducts, image2DetailsProducts: CategoriesData.categoriesData[2].image2DetailsProducts, image3DetailsProducts: CategoriesData.categoriesData[2].image3DetailsProducts, image4DetailsProducts: CategoriesData.categoriesData[2].image4DetailsProducts ,
     index: controllerImp.currentIndex,),

    CustomCategoriesDescreption(name:CategoriesData.categoriesData[3].name, titleDetails: CategoriesData.categoriesData[3].titleDetails, imageCategories: CategoriesData.categoriesData[3].imageCategories,
     image1DetailsServices: CategoriesData.categoriesData[3].image1DetailsServices, image2DetailsServices: CategoriesData.categoriesData[3].image2DetailsServices, image3DetailsServices: CategoriesData.categoriesData[3].image3DetailsServices, image4DetailsServices: CategoriesData.categoriesData[3].image4DetailsServices,
    image1DetailsProducts: CategoriesData.categoriesData[3].image1DetailsProducts, image2DetailsProducts: CategoriesData.categoriesData[3].image2DetailsProducts, image3DetailsProducts: CategoriesData.categoriesData[3].image3DetailsProducts, image4DetailsProducts: CategoriesData.categoriesData[3].image4DetailsProducts ,  
    index: controllerImp.currentIndex,),

    CustomCategoriesDescreption(name:CategoriesData.categoriesData[4].name, titleDetails: CategoriesData.categoriesData[4].titleDetails, imageCategories: CategoriesData.categoriesData[4].imageCategories,
     image1DetailsServices: CategoriesData.categoriesData[4].image1DetailsServices, image2DetailsServices: CategoriesData.categoriesData[4].image2DetailsServices, image3DetailsServices: CategoriesData.categoriesData[4].image3DetailsServices, image4DetailsServices: CategoriesData.categoriesData[4].image4DetailsServices,
    image1DetailsProducts: CategoriesData.categoriesData[4].image1DetailsProducts, image2DetailsProducts: CategoriesData.categoriesData[4].image2DetailsProducts, image3DetailsProducts: CategoriesData.categoriesData[4].image3DetailsProducts, image4DetailsProducts: CategoriesData.categoriesData[4].image4DetailsProducts ,  
    index: controllerImp.currentIndex,),
   ];
  //}
}
