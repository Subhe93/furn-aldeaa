import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:furn_aldeaa/screens/enter_adress/enter_adress.dart';
import 'package:furn_aldeaa/screens/get_started/get_started.dart';
import 'localization/app_localization.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        supportedLocales: [Locale('en', 'US'), Locale('ar', 'AE')],
        localizationsDelegates: [
          Applocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        // localeListResolutionCallback: (locale, supportedLocales) {
        //   return supportedLocales
        // },
        initialRoute: GetStarted.id,
        routes: {
          GetStarted.id: (context) => GetStarted(),
          EnterAddress.id: (context) => EnterAddress(),
        });
  }
}
