import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/modules/landing_page/widget/landing_page_mobile.dart';
import 'package:muevete_paquete/widgets/widget.dart';

class LogoAppMobile extends StatelessWidget {
  VoidCallback itemName;

  String onTap;

  LogoAppMobile(this.itemName, this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextButton(
          onPressed: () {
            Get.offAll(LandingPageMobile(onTap, itemName));
          },
          child: Flexible(
            child: CustomText(
              color: Color(0xFF00B0FF),
              size: 28,
              text: 'MUEVETE PAQUETE',
              weight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 3,
        ),
      ],
    );
  }
}
