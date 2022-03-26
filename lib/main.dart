// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:muevete_paquete/core/pages/landing_page/landing_page.dart';
import 'package:muevete_paquete/utils/services/rest_api_service.dart';

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

void initDataBase() async {
  initializeBack4AppApi();
}
