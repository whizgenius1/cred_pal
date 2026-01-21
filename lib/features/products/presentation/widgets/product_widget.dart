import 'package:cred_pal/features/products/data/model/product_model.dart';
import 'package:cred_pal/shared/theme/app_attributes.dart';
import 'package:cred_pal/shared/theme/app_colors.dart';
import 'package:cred_pal/shared/utils/utils.dart';
import 'package:cred_pal/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          3.verticalSpace,
          Stack(
            children: [
              Image.asset(
                product.image ?? '',
                height: 112.h,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              Positioned(
                left: 30.sp,
                top: 10.sp,
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Container(
                    height: 50.h,
                    width: 50.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment(0, 0),
                    child: Image.asset(
                      product.topImage ?? '',
                      height: 30.h,
                      width: 30.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
          //  10.verticalSpace,
          TextWidget.text14w800(product.name ?? '', color: AppColors.textColor),
          6.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: '₦',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w800,
                  ),
                  children: [
                    TextSpan(
                      text: formatCurrency(
                        amount: product.price ?? 0,
                        showSymbol: false,
                      ),
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontFamily: AppAttributes.avenir,
                      ),
                    ),
                  ],
                ),
              ),

              5.horizontalSpace,
              RichText(
                text: TextSpan(
                  text: '₦',
                  style: TextStyle(
                    color: AppColors.subTextColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: formatCurrency(
                        amount: product.prevPrice ?? 0,
                        showSymbol: false,
                      ),
                      style: TextStyle(
                        fontFamily: AppAttributes.avenir,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
