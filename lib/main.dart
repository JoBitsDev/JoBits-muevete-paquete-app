import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:muevete_paquete/config/themes/theme_light.dart';
import 'package:muevete_paquete/utils/ui/landingPage/landing_page.dart';

void main() {
  initDataBase();
  initModules();
  runApp(GetMaterialApp(
    //translations: Spanish(),
    locale: const Locale('es', 'ES'),
    debugShowCheckedModeBanner: false,
    home: LandingPage(),
    theme: ThemeLight.lightTheme,
  ));
}

void initModules() async {}

void initDataBase() async {}
