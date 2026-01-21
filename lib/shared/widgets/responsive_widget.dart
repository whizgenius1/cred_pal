import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Size kPhoneDesignSize = Size(
  414,
  1107,
); // Your iPhone 14 Pro Max / 12 Pro Max base
const Size kTabletDesignSize = Size(
  834,
  1194,
); // A common iPad Pro 11-inch base

/// A wrapper widget that initializes `flutter_screenutil` with a
/// `designSize` appropriate for the current device (phone or tablet).
class ResponsiveScreenUtilInit extends StatelessWidget {
  final ScreenUtilInitBuilder builder;

  const ResponsiveScreenUtilInit({super.key, required this.builder});

  // A simple helper to determine if the device is likely a tablet.
  // This uses the shortest side of the screen. A common breakpoint for
  // tablets is 600dp, meaning the shortest side (width in portrait, height in landscape)
  // is greater than 600. Some designs might use 720 or 840.
  bool _isTablet(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    // Using 600 as a breakpoint for tablet, adjust as needed for your definition.
    return shortestSide >= 600;
  }

  @override
  Widget build(BuildContext context) {
    // Determine the appropriate design size based on the device type
    final Size effectiveDesignSize = _isTablet(context)
        ? kTabletDesignSize
        : kPhoneDesignSize;

    // Initialize ScreenUtil with the chosen design size
    return ScreenUtilInit(
      designSize: effectiveDesignSize,
      minTextAdapt:
          true, // Ensures text scales down on very small screens if needed
      splitScreenMode: true, // Handles multi-window mode on iPadOS
      useInheritedMediaQuery: true,

      builder: builder,
      // child: child, // Pass the main app content as the child
    );
  }
}
