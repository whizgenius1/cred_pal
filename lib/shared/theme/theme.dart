import 'package:cred_pal/shared/theme/app_colors.dart';
import 'package:cred_pal/shared/theme/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.searchColor,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.r),
      borderSide: const BorderSide(color: Colors.transparent, width: 1),
    ),
    hintStyle: AppTextstyles.text12w400.copyWith(
      color: AppColors.hintTextColor,
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15.w),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40.r),
      borderSide: BorderSide.none,
    ),
  ),
  primaryColor: AppColors.primaryColor,
  cardTheme: CardThemeData(
    color: AppColors.cardBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
    elevation: .3,
  ),
);
