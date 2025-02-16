import 'package:advisor/application/pages/advice/advice_page.dart';
import 'package:advisor/core/services/theme_service.dart';
import 'package:advisor/core/themes/default_dark_theme.dart';
import 'package:advisor/core/themes/default_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvisorAppWrapper extends StatelessWidget {
  const AdvisorAppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeService>(
      create: (context) => ThemeService(),
      child: AdvisorApp(),
    );
  }
}

class AdvisorApp extends StatelessWidget {
  const AdvisorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          theme: DefaultLightTheme.defaultLightTheme,
          darkTheme: DefaultDarkTheme.defaultDarkTheme,
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: AdvicePageWrapperProvider(),
        );
      },
    );
  }
}
