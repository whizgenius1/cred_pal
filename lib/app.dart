import 'package:cred_pal/router/go_route_config.dart';
import 'package:cred_pal/shared/theme/app_attributes.dart';
import 'package:cred_pal/shared/theme/theme.dart';
import 'package:cred_pal/shared/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Setting SysemUIOverlay
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      ),
    );

    // Setting SystmeUIMode
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
    );
    return ResponsiveScreenUtilInit(
      builder: (context, child) {
        return MaterialApp.router(
          title: AppAttributes.appName,
          theme: lightTheme,
          routerConfig: goRouterConfig,
          localizationsDelegates: const [
            // GlobalMaterialLocalizations.delegate,
            // GlobalWidgetsLocalizations.delegate,
            // GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('en'), Locale('es')],
        );
      },
    );
  }
}
