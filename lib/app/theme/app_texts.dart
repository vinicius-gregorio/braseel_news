import 'package:braseel_noticias/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final inputLabel = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static final buttonTextWhite = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );

  static final buttonTextGrey = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.greyText,
  );

  static final buttonTextGreen = GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.greenAccent,
      decoration: TextDecoration.underline);

  static final descriptionWhite = GoogleFonts.roboto(
    fontSize: 16,
    color: AppColors.white,
  );
  static final descriptionGrey = GoogleFonts.roboto(
    fontSize: 16,
    color: AppColors.greyText,
  );
  static final descriptionBlack = GoogleFonts.roboto(
    fontSize: 16,
    color: AppColors.black,
  );
  static final descriptionGreen = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.greenAccent,
  );
  static final titleBlack = GoogleFonts.roboto(
      fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.black);

  static final priceWhite = GoogleFonts.roboto(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );

  static final priceCardGrey = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: AppColors.greyText,
  );
  static final priceCardPrimary = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: AppColors.primary,
  );
}
