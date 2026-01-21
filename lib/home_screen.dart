import 'package:cred_pal/features/merchants/presentation/view/merchants_view.dart';
import 'package:cred_pal/features/phones_gadgets/presentation/views/gadgets_views.dart';
import 'package:cred_pal/features/products/presentation/view/products_view.dart';
import 'package:cred_pal/shared/widgets/home_appbar.dart';
import 'package:cred_pal/shared/widgets/top_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppbar(),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: const [
            TopWidget(),
            ProductsView(),
            MerchantsView(),

            GadgetsView(),
          ],
        ),
      ),
    );
  }
}
