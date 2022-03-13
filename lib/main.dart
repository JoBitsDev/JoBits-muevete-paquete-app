import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:muevete_paquete/core/bloc/provider.dart';

import 'core/pages/landingPage/landing_page.dart';

void main() {
  initDataBase();
  initModules();

  runApp(
    Provider(
      child: GetMaterialApp(
        //translations: Spanish(),
        locale: const Locale('es', 'ES'),
        debugShowCheckedModeBanner: false,
        home: LandingPage(),
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    ),
  );
}

void initModules() async {}

void initDataBase() async {}
