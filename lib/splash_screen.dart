import 'package:cred_pal/gen/assets.gen.dart';
import 'package:cred_pal/router/go_route_list.dart';
import 'package:cred_pal/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      decideNavigation();
    });
  }

  decideNavigation() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        context.go(GoRouteList.home);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonTextColor,

      body: Center(child: Assets.images.logo.image(width: 150, height: 150)),
    );
  }
}
