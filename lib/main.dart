import 'package:flutter/material.dart';
import 'package:sta_project/utils/app_colors.dart';
import 'package:sta_project/view/screens/Verify_Email.dart';
import 'package:sta_project/view/screens/Verify_OTP.dart';
import 'package:sta_project/view/screens/log_in.dart';
import 'package:sta_project/view/screens/set_new_password.dart';
import 'package:sta_project/view/screens/sign_up.dart';
import 'package:sta_project/view/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STA Project',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.AppBackground),
      ),
      home: SetPassword()
    );
  }
}

