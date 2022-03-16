import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/widgets/widget.dart';

import 'landing_page_controller.dart';

class LandingPage extends GetResponsiveView<LandingPageController> {
  @override
  Widget? phone();
  Widget? tablet();
  Widget? desktop();
  Widget? watch();
  LandingPage() {
    Get.put(LandingPageController());
  }

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white70,
            leading: null, // 1
            centerTitle: true,
            actions: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child: CircleAvatarAppBar(),
                  ),
                ],
              ),
            ],
            title: logoApp(),
          ),
          drawer: const DrawerMenu(),
          body: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/deliverybackground.png'),
                    fit: BoxFit.cover,
                    opacity: 3,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Builder(
                    builder: (context) {
                      return Column(
                        children: [
                          Row(
                            children: <Widget>[
                              ElementsBody(),
                            ],
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.02),
                          StepPage(),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          floatingActionButton: Container(
            height: MediaQuery.of(context).size.height * 1,
            child: const WhatsappButton(),
          ),
          persistentFooterButtons: [
            CreateFooter(),
          ],
        ),
      ],
    );
  }
}
