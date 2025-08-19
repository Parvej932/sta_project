import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  final Color borderColor;
  final Color? textColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry padding;
  final double minWidthFraction; // Fraction of screen width

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,

    this.borderColor = Colors.transparent,

    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    this.minWidthFraction = 1.0, // 40% of screen width by default
  });

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * minWidthFraction;

    return Container(
      width: buttonWidth,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.BrandColor,
          foregroundColor: textColor,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: borderColor, width: 0),
          ),
        ),
        child:
        CustomText(text: label,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.Colorwhite,
        ),
        /* Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
            color: textColor ?? MyColors.white,),
        ),*/
      ),
    );
  }
}
