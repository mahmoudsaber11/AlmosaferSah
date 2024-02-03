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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `assets/images/logo_en.png`
  String get app_logo {
    return Intl.message(
      'assets/images/logo_en.png',
      name: 'app_logo',
      desc: '',
      args: [],
    );
  }

  /// `Explore the World with \n        Al-Musafir sah `
  String get titleOnBoarding1 {
    return Intl.message(
      'Explore the World with \n        Al-Musafir sah ',
      name: 'titleOnBoarding1',
      desc: '',
      args: [],
    );
  }

  /// `Effortless Planning at Your \n               Fingertips`
  String get titleOnBoarding2 {
    return Intl.message(
      'Effortless Planning at Your \n               Fingertips',
      name: 'titleOnBoarding2',
      desc: '',
      args: [],
    );
  }

  /// `Discover Hidden Gems and \n         Iconic Landmarks`
  String get titleOnBoarding3 {
    return Intl.message(
      'Discover Hidden Gems and \n         Iconic Landmarks',
      name: 'titleOnBoarding3',
      desc: '',
      args: [],
    );
  }

  /// `Your personalized travel companion for \n discovering new destinations, creating \n unforgettable memories, and embarking \n on exciting adventures.`
  String get subTitleOnBoarding1 {
    return Intl.message(
      'Your personalized travel companion for \n discovering new destinations, creating \n unforgettable memories, and embarking \n on exciting adventures.',
      name: 'subTitleOnBoarding1',
      desc: '',
      args: [],
    );
  }

  /// `Plan your dream vacation effortlessly. \n Select destinations, customize \n itineraries, and book exciting tours with \n just a few taps.`
  String get subTitleOnBoarding2 {
    return Intl.message(
      'Plan your dream vacation effortlessly. \n Select destinations, customize \n itineraries, and book exciting tours with \n just a few taps.',
      name: 'subTitleOnBoarding2',
      desc: '',
      args: [],
    );
  }

  /// `Explore our curated collection of \n destinations. From hidden gems to \n iconic landmarks, find the perfect \n adventure that suits your travel style.`
  String get subTitleOnBoarding3 {
    return Intl.message(
      'Explore our curated collection of \n destinations. From hidden gems to \n iconic landmarks, find the perfect \n adventure that suits your travel style.',
      name: 'subTitleOnBoarding3',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get buttonNext {
    return Intl.message(
      'Next',
      name: 'buttonNext',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get buttonGetStarted {
    return Intl.message(
      'Get Started',
      name: 'buttonGetStarted',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back!`
  String get loginTitle {
    return Intl.message(
      'Welcome Back!',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Login to your  existing  account`
  String get loginSubTitle {
    return Intl.message(
      'Login to your  existing  account',
      name: 'loginSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get hintTextPassword {
    return Intl.message(
      'Password',
      name: 'hintTextPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get forgetPassword {
    return Intl.message(
      'Forget password?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `LOG IN`
  String get textButtonLogin {
    return Intl.message(
      'LOG IN',
      name: 'textButtonLogin',
      desc: '',
      args: [],
    );
  }

  /// `or continue with`
  String get or {
    return Intl.message(
      'or continue with',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get faceBook {
    return Intl.message(
      'Facebook',
      name: 'faceBook',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get google {
    return Intl.message(
      'Google',
      name: 'google',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account ?`
  String get notAccount {
    return Intl.message(
      'Don’t have an account ?',
      name: 'notAccount',
      desc: '',
      args: [],
    );
  }

  /// ` Sign up`
  String get signUp {
    return Intl.message(
      ' Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
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
