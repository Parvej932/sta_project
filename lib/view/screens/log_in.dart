import 'package:flutter/material.dart';
import 'package:sta_project/utils/app_colors.dart';
import 'package:sta_project/view/widgets/Custom%20Text/Secondary_Text.dart';
import 'package:sta_project/view/widgets/custom_text.dart';
import 'package:sta_project/view/widgets/custom_text_field.dart';

import '../widgets/Custom Text/primary_text.dart';
import '../widgets/custom_button.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryText(text: 'Welcome Back!', fontSize: 30,),
                  SizedBox(height: 5),
                  SecondaryText(text: "Stay productive and take control of your tasks.", fontSize: 14,),
                  SizedBox(height: 25),
                  PrimaryText(text: 'Email Address',),
                  SizedBox(height: 5),
                  CustomTextField(hintText: 'michelle.rivera@example.com'),
                  SizedBox(height: 20),
                  PrimaryText(text: 'PassWord',),
                  SizedBox(height: 5),
                  CustomTextField(
                      hintText: "••••••••",
                      suffixIcon: Icons.visibility_off
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon:Icon(Icons.check_box_outline_blank)),
                      CustomText(text: 'Remember me',fontSize: 12,),

                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                        child:
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 2,
                          color: AppColors.lineColor,
                        ),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.orColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(
                        child:
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 2,
                          color: AppColors.lineColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
                  Row(
                    children: [
                      CustomText(text: "Don’t have an account?"),
                      InkWell(
                          child: CustomText(text: " Sign Up",fontWeight: FontWeight.w500, color: AppColors.BrandColor,))
                    ],
                  ),
                  SizedBox(height: 25),
                  CustomButton(label: "Log In", onPressed: (){})


                ],
            ),
          ),
        ],
      ),
    );
  }
}
