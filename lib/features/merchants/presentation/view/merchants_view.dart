import 'package:cred_pal/features/merchants/presentation/notifiers/merchant_notifier.dart';
import 'package:cred_pal/features/merchants/presentation/widgets/merchant_widget.dart';
import 'package:cred_pal/shared/theme/app_attributes.dart';
import 'package:cred_pal/shared/theme/app_colors.dart';
import 'package:cred_pal/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MerchantsView extends ConsumerWidget {
  const MerchantsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final merchantsProvider = ref.watch(merchantsProviderNotifier);
    return Container(
      padding: EdgeInsets.all(AppAttributes.appPadding.w),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: AppColors.subTextColor, // The color of your border
            width: 1.sp, // The thickness of your border
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget.text16w900(
                'Featured Merchants',
                color: AppColors.textColor,
              ),

              TextWidget.text12w400('View All', color: AppColors.primaryColor),
            ],
          ),
          20.verticalSpace,
          merchantsProvider.when(
            data: (data) {
              final merchants = data.serchedMerchants.isEmpty
                  ? data.merchants
                  : data.serchedMerchants;
              return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: merchants.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) {
                  final merchant = merchants[index];
                  return MerchantWidget(merchant: merchant);
                },
              );
            },
            error: (e, s) {
              return TextWidget.text14w800(
                'Failed to load merchants',
                color: AppColors.errorColor,
              );
            },
            loading: () {
              return Center(
                child: CircularProgressIndicator(color: AppColors.primaryColor),
              );
            },
          ),
        ],
      ),
    );
  }
}
