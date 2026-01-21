import 'package:cred_pal/features/phones_gadgets/presentation/notifiers/phone_gadget_notifier.dart';
import 'package:cred_pal/features/phones_gadgets/presentation/widgets/gadget_widget.dart';
import 'package:cred_pal/shared/theme/app_attributes.dart';
import 'package:cred_pal/shared/theme/app_colors.dart';
import 'package:cred_pal/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GadgetsView extends ConsumerWidget {
  const GadgetsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gadgetsProvider = ref.watch(gadgetsProviderNotifier);
    return Container(
      padding: EdgeInsets.all(AppAttributes.appPadding.w),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget.text16w900(
                'Featured Gadgets',
                color: AppColors.textColor,
              ),

              TextWidget.text12w400('View All', color: AppColors.primaryColor),
            ],
          ),
          20.verticalSpace,
          gadgetsProvider.when(
            data: (data) {
              final phones = data.phones;
              return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: phones.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) {
                  final phone = phones[index];
                  return GadgetWidget(phone: phone);
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
