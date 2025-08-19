import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../widgets/Custom Text/Secondary_Text.dart';
import '../widgets/Custom Text/primary_text.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(text: 'Create Your Account', fontSize: 30,),
                SizedBox(height: 5),
                SecondaryText(text: "Join Task Manager today — organize better, work smarter, and stay in control of your day.", textAlign: TextAlign.start, fontSize: 14,),
                SizedBox(height: 25),
                PrimaryText(text: 'First Name',),
                SizedBox(height: 5),
                CustomTextField(hintText: 'e.g. Kristin '),
                SizedBox(height: 20),
                PrimaryText(text: 'Last Name',),
                SizedBox(height: 5),
                CustomTextField(hintText: 'e.g. Cooper'),
                SizedBox(height: 20),
                PrimaryText(text: 'Email Address',),
                SizedBox(height: 5),
                CustomTextField(hintText: 'e.g. kristin.cooper@example.com'),
                SizedBox(height: 20),
                PrimaryText(text: 'Address',),
                SizedBox(height: 5),
                CustomTextField(hintText: 'e.g. 1234 Elm Street, Springfield, IL'),
                SizedBox(height: 20),
                PrimaryText(text: 'PassWord',),
                SizedBox(height: 5),
                CustomTextField(
                    hintText: "••••••••",
                    suffixIcon: Icons.visibility_off
                ),
                SizedBox(height: 20),
                PrimaryText(text: ' Confirm password',),
                SizedBox(height: 5),
                CustomTextField(
                    hintText: "••••••••",
                    suffixIcon: Icons.visibility_off
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon:Icon(Icons.check_box_outline_blank)),
                    CustomText(text: 'I agree to the Terms & Conditions and Privacy Policy.',fontSize: 12,),

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
                    CustomText(text: "Already have an account?"),
                    InkWell(
                        child: CustomText(text: " Log In",fontWeight: FontWeight.w500, color: AppColors.BrandColor,))
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
