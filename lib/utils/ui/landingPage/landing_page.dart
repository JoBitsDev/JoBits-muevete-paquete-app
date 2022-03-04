import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:muevete_paquete/constants/assest_path.dart';
import 'package:muevete_paquete/widgets/widget.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

import 'landing_page_controller.dart';

class LandingPage extends GetView<LandingPageController> {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: FooterView(
        footer: Footer(
          child: CreateFooter(),
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Expanded(
                    child: ElementsBody(),
                  ),
                  Image(
                    alignment: AlignmentDirectional.topEnd,
                    image: AssetImage("assets/images/delivery.png"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: const WhatsappButton(),
    );
  }
}
