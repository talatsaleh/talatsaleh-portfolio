import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:talatsaleh_portfolio/core/theme.dart';
import 'package:talatsaleh_portfolio/home/screens/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      darkTheme: MyThemeData(myColorScheme: MyThemeData.myDarkColorScheme)
          .myTheme,
      title: 'Flutter Demo',
      theme: MyThemeData(myColorScheme: MyThemeData.myLightColorScheme).myTheme,
      home: const HomeScreen(),
    );
  }
}

