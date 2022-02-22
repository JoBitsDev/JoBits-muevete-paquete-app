import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:muevete_paquete/config/themes/theme_light.dart';
import 'package:muevete_paquete/utils/ui/ui_SelectOperation/select_operation.dart';

void main() {
  initDataBase();
  initModules();
  runApp(GetMaterialApp(
    //translations: Spanish(),
    locale: Locale('es', 'ES'),
    debugShowCheckedModeBanner: false,
    home: SelectOperation(),
    theme: ThemeLight.lightTheme,
  ));
}

void initModules() async {}

void initDataBase() async {}