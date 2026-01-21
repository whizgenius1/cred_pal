import 'package:cred_pal/features/merchants/data/model/merchant_model.dart';
import 'package:cred_pal/shared/theme/app_colors.dart';
import 'package:cred_pal/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MerchantWidget extends StatelessWidget {
  final MerchantModel merchant;
  const MerchantWidget({super.key, required this.merchant});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 60.h,
              width: 60.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(merchant.image ?? ''),
                ),
              ),
            ),
            if (merchant.hasNotification ?? false)
              Positioned(
                right: -1.sp,
                top: -2.sp,
                child: Container(
                  height: 20.h,
                  width: 20.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.appGreen,
                    border: Border.all(color: Colors.white, width: 2.sp),
                  ),
                ),
              ),
          ],
        ),

        5.verticalSpace,
        TextWidget.text12w500(merchant.name ?? '', color: AppColors.textColor),
      ],
    );
  }
}
