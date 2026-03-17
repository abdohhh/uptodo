import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:uptodo/Screens/Loginscreen.dart';
import 'package:uptodo/Screens/Onboading.dart';
import 'package:uptodo/Screens/StartScreen.dart';
import 'package:uptodo/core/constant/approutes/AppRouts.dart';
import 'package:uptodo/core/constant/themes/Appthemes.dart';
import 'package:uptodo/generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'UPTODO',
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: ThemeMode.dark,
      routes: {
        Approuts.Onboading: (context) => Onboading(),
        Approuts.StartScreen: (context) =>
            Startscreen(),
        Approuts.LoginScreen: (context) =>
            Loginscreen(),
        Approuts.RegisterScreen: (context) =>
            const Scaffold(body: Center(child: Text('Register Screen'))),
        Approuts.home: (context) =>
            const Scaffold(body: Center(child: Text('Home Screen'))),
      },
      initialRoute: Approuts.Onboading,
    );
  }
}
