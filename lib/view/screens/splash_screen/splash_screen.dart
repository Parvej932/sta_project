import 'package:flutter/material.dart';
import 'package:sta_project/view/screens/log_in.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Controller তৈরি (২ সেকেন্ডে একবার ঘুরবে)
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(); // auto repeat (infinite)

    // ৩ সেকেন্ড পর অন্য পেজে Navigate করবে
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LogIn()), // আপনার Next Page
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // memory free
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: _controller,
          child: Image.asset(
            "assets/images/Splash.png",
            width: 150,
            height: 150,
          ),
        ),
      ),
    );
  }
}

