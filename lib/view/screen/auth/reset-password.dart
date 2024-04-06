import 'package:flutter/material.dart';
import 'package:med_sal/view/widget/appbarPages.dart';
import 'package:med_sal/view/widget/auth/custom-button.dart';
import 'package:med_sal/view/widget/auth/text-form-field.dart';
import 'package:med_sal/view/widget/home/custom-expanded.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(flex: 2,
                    child: CustomAppBarPages(textappBar: 'Reset Password',)),
                CustomExpanded(flex: 1,),
                CustomTextFormFieldAuth(hintTextAuth: '********', labelTextAuth: 'New Password', suffixIconAuth: Icons.visibility_outlined,),
                SizedBox(height: 20,),
                CustomTextFormFieldAuth(hintTextAuth: '********', labelTextAuth: 'Confirm Password', suffixIconAuth: Icons.visibility_off_outlined,),
                CustomExpanded(flex: 1,),
                CustomButtonAuth(text: 'Change Password', height: 50, width: 350,),
                CustomExpanded(flex: 3,),
            ],),
          ),
        ],),
    );
  }
}