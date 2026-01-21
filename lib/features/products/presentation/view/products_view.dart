import 'package:cred_pal/features/products/presentation/notifiers/product_notifier.dart';
import 'package:cred_pal/features/products/presentation/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsView extends ConsumerWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsProvider = ref.watch(productsProviderNotifier);

    return productsProvider.when(
      data: (data) {
        final products = data.serchedProducts.isEmpty
            ? data.products
            : data.serchedProducts;
        return SizedBox(
          height: 405.h,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 8),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // This creates 2 ROWS
              mainAxisSpacing: 10.w, // Spacing between items horizontally
              crossAxisSpacing: 10.h, // Spacing between items vertically
              childAspectRatio: .95.sp, // Adjust width/height ratio of items
            ),
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductWidget(product: product);
            },
          ),
        );
      },
      error: (e, s) {
        return Center(child: Text('Error: $e'));
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
