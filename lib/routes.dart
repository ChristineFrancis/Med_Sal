import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:med_sal/core/constant/routes.dart';
import 'package:med_sal/middleware/middleware.dart';
import 'package:med_sal/middleware/super-middleware.dart';
import 'package:med_sal/view/screen/patient/appointment.dart';
import 'package:med_sal/view/screen/auth/check-email.dart';
import 'package:med_sal/view/screen/auth/login.dart';
import 'package:med_sal/view/screen/auth/reset-password.dart';
import 'package:med_sal/view/screen/auth/verify-code.dart';
import 'package:med_sal/view/screen/categories/categories.dart';
import 'package:med_sal/view/screen/categories/details.dart';
import 'package:med_sal/view/screen/categories/doctor-category.dart';
import 'package:med_sal/view/screen/patient/details-services.dart';
import 'package:med_sal/view/screen/home-page.dart';
import 'package:med_sal/view/screen/auth/register.dart';
import 'package:med_sal/view/screen/patient/booking/product-booking.dart';
import 'package:med_sal/view/screen/patient/booking/service-booking.dart';
import 'package:med_sal/view/screen/patient/navbar.dart';
import 'package:med_sal/view/screen/service-provider/add-product.dart';
import 'package:med_sal/view/screen/service-provider/add-service.dart';
import 'package:med_sal/view/screen/service-provider/navbar-service-provider.dart';
import 'package:med_sal/view/screen/service-provider/register-service-provider.dart';
import 'package:med_sal/view/screen/setting.dart';
import 'package:med_sal/view/screen/splash.dart';

List<GetPage<dynamic>> routes=
[
  GetPage(name: AppRoute.registerPage, page:()=>  RegisterPage()),
  GetPage(name: AppRoute.loginPage, page:()=>  LoginPage()),
  GetPage(name: AppRoute.checkEmail, page:()=> const CheckEmailPage()),
  GetPage(name: AppRoute.resetPassword, page:()=> const ResetPasswordPage()),
  GetPage(name: AppRoute.verifyCode, page:()=> const VerifyCodePage()),
  GetPage(name: AppRoute.registerServiceprovider, page:()=> RegisterSrviceProviderPage()),
  GetPage(name: AppRoute.setting, page:()=> const SettingPage() ),
  GetPage(name: AppRoute.homePage, page:()=> const HomePage()),
  GetPage(name: AppRoute.categoriesPage, page:()=> const CategoriesPage()),
  GetPage(name: AppRoute.detailsPage, page:()=> const DetailsPage()),
  GetPage(name: AppRoute.productsBooking, page:()=> const ProductBookingPage()),
  GetPage(name: AppRoute.sevicesBooking, page:()=> const ServiceBookingPage()),
  GetPage(name: AppRoute.detailsSevicesBooking, page:()=> const DetailsServicesPage()),
  GetPage(name: AppRoute.doctorsCategory, page:()=> const DoctorCategory()),
  GetPage(name: AppRoute.navbar, page:()=> const NavBar()),
  GetPage(name: AppRoute.appointment, page:()=> const AppointmentPage()),
  GetPage(name: AppRoute.navBarServiceProvider, page:()=> const NavBarServiceProvider()),
  GetPage(name: AppRoute.addService, page:()=> const ADDService()),
  GetPage(name: AppRoute.addProduct, page:()=> const ADDProduct()),
 GetPage(name: AppRoute.splash, page:()=> const SplashScreen() , middlewares: [MyMiddleware() , SuperMiddleware()]),

];