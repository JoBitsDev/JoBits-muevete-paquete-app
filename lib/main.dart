import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'core/pages/landingPage/landing_page.dart';

void main() {
  initDataBase();
  initModules();

  runApp(
    GetMaterialApp(
      //translations: Spanish(),
      locale: const Locale('es', 'ES'),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      theme: ThemeData(
        fontFamily: 'Roboto-Italic.ttf',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    ),
  );
}

void initModules() async {}

void initDataBase() async {}
