import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/modules/landing_page/widget/landing_page_mobile.dart';
import 'package:muevete_paquete/modules/landing_page/widget/landing_page_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'landing_page_controller.dart';

class LandingPage extends GetResponsiveView<LandingPageController> {
  LandingPage(this.itemName, this.onTap) {
    Get.put(LandingPageController());
  }
  final String itemName;
  final VoidCallback onTap;

  Widget build(BuildContext context) {
    return Expanded(
      child: ScreenTypeLayout(
        mobile: LandingPageMobile(itemName, onTap),
        desktop: LandingPageWeb(onTap, itemName),
        tablet: LandingPageWeb(onTap, itemName),
      ),
    );
  }
}
