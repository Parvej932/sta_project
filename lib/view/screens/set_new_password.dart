import 'package:flutter/material.dart';

import '../widgets/Custom Text/Secondary_Text.dart';
import '../widgets/Custom Text/primary_text.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
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
                PrimaryText(text: 'Set Your New Password', fontSize: 30,),
                SizedBox(height: 5),
                SecondaryText(text: "Create a secure password to protect your account and get started seamlessly!", textAlign: TextAlign.start, fontSize: 14,),
                SizedBox(height: 25),

                PrimaryText(text: 'New Password',),
                SizedBox(height: 5),
                CustomTextField(
                    hintText: "••••••••",
                    suffixIcon: Icons.visibility_off
                ),
                SizedBox(height: 20),
                PrimaryText(text: 'New Confirm password',),
                SizedBox(height: 5),
                CustomTextField(
                    hintText: "••••••••",

                    suffixIcon: Icons.visibility_off
                ),

                SizedBox(height: 25),
                CustomButton(label: "Continue ", onPressed: (){})


              ],
            ),
          ),
        ],
      ),
    );
  }
}
