import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lumya/constants/custom_theme.dart';
import 'package:lumya/l10n/app_localizations.dart';
import 'package:lumya/l10n/l10n.dart';
import 'package:lumya/constants/custom_routes.dart';

void main() {
  runApp(const LumyaApp());
}

class LumyaApp extends StatelessWidget {
  const LumyaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: CustomTheme().customLightTheme,
      darkTheme: CustomTheme().customDarkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      supportedLocales: L10n.all,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerConfig: CustomRoutes().route,
    );
  }
}
