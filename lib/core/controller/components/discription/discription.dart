import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors/app_colors.dart';

class DescriptionText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? letterSpacing;
  final double? height;

  const DescriptionText(
      this.text, {
        super.key,
        this.fontSize = 14,
        this.fontWeight = FontWeight.w400,
        this.fontStyle = FontStyle.normal,
        this.color=AppColors.lightText,
        this.textAlign,
        this.maxLines,
        this.overflow,
        this.letterSpacing,
        this.height,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        color: color,
        letterSpacing: letterSpacing,
        height: height ?? 1.5,
      ),
    );
  }
}
