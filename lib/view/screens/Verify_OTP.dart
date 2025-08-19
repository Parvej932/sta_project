import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sta_project/utils/app_colors.dart';

import '../widgets/Custom Text/Secondary_Text.dart';
import '../widgets/Custom Text/primary_text.dart';
import '../widgets/custom_button.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({super.key});

  @override
  State<VerifyOTP> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyOTP> {
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
                PinCodeTextField(
                  appContext: context,
                  length: 6,  // 6 digit
                  obscureText: true, // hide password
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(6),
                    fieldHeight: 46,
                    fieldWidth: 46,

                  ),
                  onChanged: (value) {
                    print(value);
                  },
                  onCompleted: (value) {
                    print("Entered OTP: $value");
                  },
                ),



                SizedBox(height: 25),
                CustomButton(label: "Confirm", onPressed: (){})


              ],
            ),
          ),
        ],
      ),
    );
  }
}
