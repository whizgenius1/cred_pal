import 'package:cred_pal/shared/theme/app_attributes.dart';
import 'package:cred_pal/shared/theme/app_colors.dart';
import 'package:cred_pal/shared/utils/utils.dart';
import 'package:cred_pal/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarColor,
      toolbarHeight: 189.h,
      actionsPadding: EdgeInsets.only(right: AppAttributes.appPadding.w),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextWidget.text28w900('Pay later\neverywhere', multiText: true),
          10.horizontalSpace,
          Container(
            margin: EdgeInsets.only(bottom: 8.h),
            decoration: BoxDecoration(
              color: AppColors.buttonTextColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.priority_high,
              color: const Color(0xFF778FEE),
              size: 12.sp,
            ),
          ),
        ],
      ),
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // TextWidget.text12w500('Shopping limit: \u{20A6}0'),
            RichText(
              text: TextSpan(
                text: 'Shopping limit: ',
                style: TextStyle(
                  color: const Color(0xFF20294A),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(text: '₦'),

                  TextSpan(
                    text: formatCurrency(amount: 0, showSymbol: false),
                    style: TextStyle(fontFamily: AppAttributes.avenir),
                  ),
                ],
              ),
            ),
            5.verticalSpace,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              onPressed: () {},
              child: TextWidget.text13w700(
                'Activate Credit',
                color: AppColors.buttonTextColor,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 141.h);
}
