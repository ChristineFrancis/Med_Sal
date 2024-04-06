import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Import DateFormat
import 'package:med_sal/core/constant/color.dart';

abstract class AppointmentController extends GetxController {}

class AppointmentControllerImp extends AppointmentController {
  DateTime? selectedDate;
  Future<void> selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: Get.overlayContext!,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: AppColor.primaryDarkColor,
            colorScheme: ColorScheme.light(primary: AppColor.primaryDarkColor),
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null) {
      selectedDate = pickedDate;
      update();
    }
  }
}