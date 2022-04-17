import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/modules/landing_page/widget/landing_page_web.dart';
import 'package:muevete_paquete/widgets/widget.dart';

class LogoAppWeb extends StatelessWidget {
  const LogoAppWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextButton(
          onPressed: () {
            Get.offAll(LandingPageWeb());
          },
          child: Flexible(
            child: CustomText(
              color: Color(0xFF00B0FF),
              size: 38,
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
