import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/widgets/create_footer_mobile.dart';
import 'package:muevete_paquete/widgets/elements_body_mobile.dart';
import 'package:muevete_paquete/widgets/side_menu_mobile.dart';
import 'package:muevete_paquete/widgets/top_navigation_bar_mobile.dart';
import 'package:muevete_paquete/widgets/widget.dart';

import '../landing_page_controller.dart';

class LandingPageMobile extends GetResponsiveView<LandingPageController> {
  final String itemName;
  final VoidCallback onTap;

  LandingPageMobile(this.itemName, this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
      appBar: topNavigationBarMobile(context, scaffoldKey),
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 5.0),
          FadeInDown(
            delay: Duration(milliseconds: 2000),
            child: ElementsBodyMobile(itemName, onTap),
          ),
        ]),
      ),
      drawer: Drawer(child: SideMenuMobile()),
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.08,
        child: WhatsappButtonMobile(),
      ),
      persistentFooterButtons: const [
        CreateFooterMobile(),
      ],
    );
  }
}
