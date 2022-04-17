// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muevete_paquete/controllers/side_menu_controller.dart';
import 'package:muevete_paquete/layout.dart';
import 'package:muevete_paquete/modules/landing_page/landing_page.dart';
import 'package:muevete_paquete/utils/services/rest_api_service.dart';
import 'package:muevete_paquete/utils/ui/responsiveWidget.dart';
import 'package:muevete_paquete/modules/landing_page/widget/landing_page_mobile.dart';

void main() {
  Get.put(SideMenuController());
  initDataBase();
  initModules();

  runApp(
    Builder(builder: (context) {
      return GetMaterialApp(
        //translations: Spanish(),
        locale: const Locale('es', 'ES'),
        debugShowCheckedModeBanner: false,
        home: PrincipalLayout(
          itemName: '',
          onTap: () {},
        ),

        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            },
          ),
          primaryColor: Colors.blue,
        ),
      );
    }),
  );
}

void initModules() async {}

void initDataBase() async {
  initializeBack4AppApi();
}
