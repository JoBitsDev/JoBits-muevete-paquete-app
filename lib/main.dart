import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:muevete_paquete/utils/services/rest_api_service.dart';

import 'core/pages/landingPage/landing_page.dart';

void main() {
  initDataBase();
  initModules();

  runApp(
    GetMaterialApp(
      //translations: Spanish(),
      locale: const Locale('es', 'ES'),
      debugShowCheckedModeBanner: true,
      home: LandingPage(),
      theme: ThemeData(
        fontFamily: 'Roboto-Italic.ttf',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    ),
  );
}

void initModules() async {}

void initDataBase() async {
  initializeBack4AppApi();
}
