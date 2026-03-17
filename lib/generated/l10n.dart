// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `UpTodo`
  String get appName {
    return Intl.message(
      'UpTodo',
      name: 'appName',
      desc: 'The title of the application',
      args: [],
    );
  }

  /// `Manage your tasks`
  String get onboardingTitle1 {
    return Intl.message(
      'Manage your tasks',
      name: 'onboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `You can easily manage all of your daily tasks in UpTodo for free`
  String get onboardingSubtitle1 {
    return Intl.message(
      'You can easily manage all of your daily tasks in UpTodo for free',
      name: 'onboardingSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Create daily routine`
  String get onboardingTitle2 {
    return Intl.message(
      'Create daily routine',
      name: 'onboardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `In UpTodo you can create your personalized routine to stay productive`
  String get onboardingSubtitle2 {
    return Intl.message(
      'In UpTodo you can create your personalized routine to stay productive',
      name: 'onboardingSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Organize your tasks`
  String get onboardingTitle3 {
    return Intl.message(
      'Organize your tasks',
      name: 'onboardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `You can organize your daily tasks by adding your tasks into separate categories`
  String get onboardingSubtitle3 {
    return Intl.message(
      'You can organize your daily tasks by adding your tasks into separate categories',
      name: 'onboardingSubtitle3',
      desc: '',
      args: [],
    );
  }

  /// `SKIP`
  String get skip {
    return Intl.message('SKIP', name: 'skip', desc: '', args: []);
  }

  /// `BACK`
  String get back {
    return Intl.message('BACK', name: 'back', desc: '', args: []);
  }

  /// `NEXT`
  String get next {
    return Intl.message('NEXT', name: 'next', desc: '', args: []);
  }

  /// `GET STARTED`
  String get getStarted {
    return Intl.message('GET STARTED', name: 'getStarted', desc: '', args: []);
  }

  /// `Welcome to UpTodo`
  String get WelcomescreenTitle {
    return Intl.message(
      'Welcome to UpTodo',
      name: 'WelcomescreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please login to your account or create new account to continue`
  String get Welcomescreendescription {
    return Intl.message(
      'Please login to your account or create new account to continue',
      name: 'Welcomescreendescription',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTitle {
    return Intl.message('Login', name: 'loginTitle', desc: '', args: []);
  }

  /// `Create Account`
  String get Createaccount {
    return Intl.message(
      'Create Account',
      name: 'Createaccount',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registerTitle {
    return Intl.message('Register', name: 'registerTitle', desc: '', args: []);
  }

  /// `Username`
  String get username {
    return Intl.message('Username', name: 'username', desc: '', args: []);
  }

  /// `Enter your Username`
  String get usernameHint {
    return Intl.message(
      'Enter your Username',
      name: 'usernameHint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Email`
  String get emailHint {
    return Intl.message(
      'Enter your Email',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `* * * * * * * `
  String get passwordHint {
    return Intl.message(
      '* * * * * * * ',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message('password', name: 'password', desc: '', args: []);
  }

  /// `Login`
  String get loginButton {
    return Intl.message('Login', name: 'loginButton', desc: '', args: []);
  }

  /// `Register`
  String get registerButton {
    return Intl.message('Register', name: 'registerButton', desc: '', args: []);
  }

  /// `Login with Google`
  String get loginWithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get loginWithApple {
    return Intl.message(
      'Login with Apple',
      name: 'loginWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? Login`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account? Login',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `What do you want to do today?`
  String get homeEmptyStateTitle {
    return Intl.message(
      'What do you want to do today?',
      name: 'homeEmptyStateTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tap + to add your tasks`
  String get homeEmptyStateSubtitle {
    return Intl.message(
      'Tap + to add your tasks',
      name: 'homeEmptyStateSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Index`
  String get navHome {
    return Intl.message('Index', name: 'navHome', desc: '', args: []);
  }

  /// `Calendar`
  String get navCalendar {
    return Intl.message('Calendar', name: 'navCalendar', desc: '', args: []);
  }

  /// `Focus`
  String get navFocus {
    return Intl.message('Focus', name: 'navFocus', desc: '', args: []);
  }

  /// `Profile`
  String get navProfile {
    return Intl.message('Profile', name: 'navProfile', desc: '', args: []);
  }

  /// `Add Task`
  String get addTaskTitle {
    return Intl.message('Add Task', name: 'addTaskTitle', desc: '', args: []);
  }

  /// `Do math homework`
  String get taskNameHint {
    return Intl.message(
      'Do math homework',
      name: 'taskNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get taskDescriptionHint {
    return Intl.message(
      'Description',
      name: 'taskDescriptionHint',
      desc: '',
      args: [],
    );
  }

  /// `Choose Time`
  String get chooseTime {
    return Intl.message('Choose Time', name: 'chooseTime', desc: '', args: []);
  }

  /// `Choose Category`
  String get chooseCategory {
    return Intl.message(
      'Choose Category',
      name: 'chooseCategory',
      desc: '',
      args: [],
    );
  }

  /// `Choose Priority`
  String get choosePriority {
    return Intl.message(
      'Choose Priority',
      name: 'choosePriority',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancelBtn {
    return Intl.message('Cancel', name: 'cancelBtn', desc: '', args: []);
  }

  /// `Save`
  String get saveBtn {
    return Intl.message('Save', name: 'saveBtn', desc: '', args: []);
  }

  /// `Profile`
  String get profileTitle {
    return Intl.message('Profile', name: 'profileTitle', desc: '', args: []);
  }

  /// `App Language`
  String get settingsAppLanguage {
    return Intl.message(
      'App Language',
      name: 'settingsAppLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Change App Color`
  String get settingsTheme {
    return Intl.message(
      'Change App Color',
      name: 'settingsTheme',
      desc: '',
      args: [],
    );
  }

  /// `Change App Typography`
  String get settingsTypography {
    return Intl.message(
      'Change App Typography',
      name: 'settingsTypography',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get settingsAbout {
    return Intl.message('About Us', name: 'settingsAbout', desc: '', args: []);
  }

  /// `FAQ`
  String get settingsFAQ {
    return Intl.message('FAQ', name: 'settingsFAQ', desc: '', args: []);
  }

  /// `Help & Feedback`
  String get settingsHelp {
    return Intl.message(
      'Help & Feedback',
      name: 'settingsHelp',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get settingsLogout {
    return Intl.message('Log out', name: 'settingsLogout', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
