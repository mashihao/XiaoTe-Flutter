import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xiaote_flutter/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle =
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  NewHome(),
    );
  }
}

SystemUiOverlayStyle setNavigationBarTextColor(bool light) {
  return SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    systemNavigationBarDividerColor: null,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarColor: null,
    statusBarIconBrightness: light ? Brightness.light : Brightness.dark,
    statusBarBrightness: light ? Brightness.dark : Brightness.light,
  );
}

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: setNavigationBarTextColor(true),
      child: Scaffold(
        body: SplashPage(),
      ),
    );
  }
}
