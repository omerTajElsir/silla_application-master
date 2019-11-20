import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:silla_application/pages/fill_profile.dart';
import 'package:silla_application/pages/language.dart';
import 'package:silla_application/pages/login.dart';
import 'package:silla_application/pages/splash.dart';
import 'package:silla_application/pages/verify.dart';
import 'package:silla_application/utils/AppColors.dart';

import 'client_provider.dart';
import 'home/AppHome.dart';
import 'localization/LocaleHelper.dart';
import 'localization/localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
String get host {
  if (Platform.isAndroid)
    return '10.0.2.2';
  else // for iOS simulator
    return 'localhost';
}

final String GRAPHQL_ENDPOINT = 'http://$host:4000/graphql';
final String SUBSCRIPTION_ENDPOINT = 'ws://$host:4000/subscriptions';
class MyAppState extends State<MyApp> {
  SpecificLocalizationDelegate _specificLocalizationDelegate;

  onLocaleChange(Locale locale) {
    setState(() {
      _specificLocalizationDelegate = new SpecificLocalizationDelegate(locale);
    });
  }

  @override
  void initState() {
    super.initState();
    helper.onLocaleChanged = onLocaleChange;
    _specificLocalizationDelegate =
        SpecificLocalizationDelegate(new Locale("ar"));

    // TODO: implement initState
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'صله',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(elevation: 0),
            primarySwatch: Colors.green,
            primaryColor: AppColors.mainColor,
            accentColor: AppColors.mainColor),
        localizationsDelegates: [
          const FallbackCupertinoLocalisationsDelegate(),
//       localization string values
          GlobalMaterialLocalizations.delegate,
//       left to right or || right  to left based on the widget ----> text direction
          GlobalWidgetsLocalizations.delegate,
          //app-specific localization
          _specificLocalizationDelegate
        ],
        supportedLocales: [
//    The Locale class is used to identify the user’s language
          Locale('en'),
          Locale('ar')
        ],
        locale: _specificLocalizationDelegate.overriddenLocale,
        home: Login());
  }
}

class FallbackCupertinoLocalisationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      DefaultCupertinoLocalizations.load(locale);

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}
