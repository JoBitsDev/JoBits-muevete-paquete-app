import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/widgets/circle_avatar_app_bar.dart';
import 'package:muevete_paquete/widgets/drawer_menu.dart';
import 'package:muevete_paquete/widgets/logo_app.dart';
import 'package:muevete_paquete/widgets/side_menu.dart';

import 'package:muevete_paquete/widgets/widget.dart';

import 'dashboard_controller.dart';

class Dashboard extends GetResponsiveView<DashboardController> {
  VoidCallback itemName;

  String onTap;

  Dashboard(this.itemName, this.onTap, {Key? key}) : super(key: key) {
    Get.put(DashboardController());

    @override
    Widget build(BuildContext context) {
      return Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white70,
              titleSpacing: 10.0,
              actions: const <Widget>[
                Center(
                  child: CircleAvatarAppBar(),
                ),
              ],
              title: LogoApp(onTap, itemName),
            ),
            drawer: const SideMenu(),
            body: Container(
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Builder(
                        builder: (BuildContext context) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                              ),
                              Text(
                                'Operaciones',
                                style: TextStyle(fontSize: 20.0),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                  CardsServicesHorizontal(itemName, onTap)
                ],
              ),
            ),
            floatingActionButton: Container(
              height: MediaQuery.of(context).size.height * 1,
              child: const WhatsappButton(),
            ),
            persistentFooterButtons: const [
              CreateFooter(),
            ],
          ),
        ],
      );
    }
  }
}
