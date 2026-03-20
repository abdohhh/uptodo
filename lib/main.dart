import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:uptodo/Database/Sqflite.dart';
import 'package:uptodo/Screens/HomeScreen.dart';
import 'package:uptodo/Screens/Loginscreen.dart';
import 'package:uptodo/Screens/Onboading.dart';
import 'package:uptodo/Screens/RegisterScreen.dart';
import 'package:uptodo/Screens/StartScreen.dart';
import 'package:uptodo/core/constant/approutes/AppRouts.dart';
import 'package:uptodo/core/constant/themes/Appthemes.dart';
import 'package:uptodo/generated/l10n.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dbHelper = TasksDataBase.instanse;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

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
        Approuts.StartScreen: (context) => Startscreen(),
        Approuts.LoginScreen: (context) => Loginscreen(),
        Approuts.RegisterScreen: (context) => Registerscreen(),
        Approuts.home: (context) => Homescreen(),
      },
      initialRoute: Approuts.Onboading,
    );
  }
}
