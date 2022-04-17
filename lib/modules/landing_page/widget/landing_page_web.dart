import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:muevete_paquete/widgets/elements_body.dart';
import 'package:muevete_paquete/widgets/side_menu.dart';
import 'package:muevete_paquete/widgets/top_navigation_bar.dart';
import 'package:muevete_paquete/widgets/widget.dart';

class LandingPageWeb extends StatelessWidget {
  LandingPageWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: FadeInDown(
              delay: Duration(milliseconds: 2000),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Flexible(child: ElementsBody()),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(child: SideMenu()),
      floatingActionButton: Flexible(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          height: MediaQuery.of(context).size.height * 0.8,
          child: WhatsappButton(),
        ),
      ),
      persistentFooterButtons: const [
        CreateFooter(),
      ],
    );
  }
}
