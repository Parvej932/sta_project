
import 'package:flutter/material.dart';


import '../widgets/Custom Text/Secondary_Text.dart';
import '../widgets/Custom Text/primary_text.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
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
                PrimaryText(text: 'Verify Your Email', fontSize: 30,),
                SizedBox(height: 5),
                SecondaryText(text: "We'll send a verification code to this email to confirm your account.",textAlign: TextAlign.start, fontSize: 14,),
                SizedBox(height: 25),
                PrimaryText(text: 'Email Address',),
                SizedBox(height: 5),
                CustomTextField(hintText: 'michelle.rivera@example.com'),

                SizedBox(height: 25),
                CustomButton(label: "Send", onPressed: (){})


              ],
            ),
          ),
        ],
      ),
    );
  }
}
