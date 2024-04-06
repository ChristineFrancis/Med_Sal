import 'package:get/get_navigation/src/root/internacionalization.dart';

class MyTranslation extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => 
  {
    'ar':
    {
      '1':'تعديل الملف الشخصي',
      '2':'تعديل كلمة المرور' , 
      '3':'المساعدة',
      '4':'النمط المظلم',
      '5':'الملف الشخصي',
      '6':'مريض',
      '7':'البريد الإلكتروني',
      '8':'رقم الهاتف',
      '9':'تاريخ الانضمام',
      '10':'مزود خدمة',
      '11':'تسجيل خروج',
       '12':'تغيير اللغة'
    } , 


    'en':
    {
       '1':'Edit My Profile',
       '2':'Change Password ',
       '3':'Help',
       '4':'Dark mode',
       '5':'Profile',
       '6':'Patient',
       '7':'Email',
       '8':'Phone',
       '9':'Date of joining',
       '10':'Service Provider',
       '11':'Logout',
       '12':'Change Language'

    } ,
  };
}