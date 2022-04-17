import 'package:flutter/material.dart';
import 'package:muevete_paquete/modules/landing_page/landing_page.dart';
import 'package:muevete_paquete/widgets/side_menu.dart';

class PrincipalLayout extends StatelessWidget {
  final String itemName;

  final VoidCallback onTap;

  PrincipalLayout({Key? key, required this.itemName, required this.onTap})
      : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      drawer: Drawer(child: SideMenu()),
      body: LandingPage(itemName, onTap),
    );
  }
}
