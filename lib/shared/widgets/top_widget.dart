import 'package:cred_pal/gen/assets.gen.dart';
import 'package:cred_pal/shared/theme/app_attributes.dart';
import 'package:cred_pal/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      padding: EdgeInsets.symmetric(
        horizontal: AppAttributes.appPadding.w,
        vertical: 20.h,
      ),
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for products or stores',
                prefixIcon: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Assets.svgs.searchnormal.svg(
                    height: 18.sp,
                    width: 18.sp,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          10.horizontalSpace,
          Container(
            height: 45.w,
            width: 45.w,
            padding: EdgeInsets.all(13.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.searchColor,
            ),
            child: Assets.svgs.scan.svg(),
          ),
        ],
      ),
    );
  }
}
