import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/widgets/logo_app_mobile.dart';
import 'package:muevete_paquete/widgets/logo_app_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LogoAppMobile(),
      desktop: LogoAppWeb(),
    );
  }
}
