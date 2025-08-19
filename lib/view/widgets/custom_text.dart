import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final String? fontFamily;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;// Optional override

  const CustomText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.fontFamily,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    // Default font is Inter
    final defaultStyle = GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.ColorGrey700,
      ),
    );

    // If custom fontFamily provided, use that
    final customStyle = TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? AppColors.ColorGrey700,
    );

    return Text(
      text,
      style: fontFamily != null ? customStyle : defaultStyle,
      textAlign: textAlign ?? TextAlign.center, // ensure lines are centered
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

