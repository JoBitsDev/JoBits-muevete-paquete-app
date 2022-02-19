import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';


void main() {
  initDataBase();
  initModules();
  runApp(GetMaterialApp(
    //translations: Spanish(),
    locale: Locale('es', 'ES'),
    debugShowCheckedModeBanner: false,
    //home: WelcomeUI(),
    //theme: ThemeLight.lightTheme,
  ));
}

void initModules() async {
}

void initDataBase() async {
}
