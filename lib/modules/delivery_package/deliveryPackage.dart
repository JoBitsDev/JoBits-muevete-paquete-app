import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/modules/delivery_package/deliveryPackageController.dart';
import 'package:muevete_paquete/widgets/widget.dart';

class DeliveryPackage extends GetResponsiveView<DeliveryPackageController> {
  @override
  Widget? phone();
  Widget? tablet();
  Widget? desktop();
  Widget? watch();

  DeliveryPackage() {
    Get.put(DeliveryPackageController());
  }
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
              title: logoApp(),
            ),
            drawer: const DrawerMenu(),
            body: SingleChildScrollView(
              child: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6.0,
                          offset: Offset(0.0, 5.0),
                          spreadRadius: 3.0)
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Column(
                    verticalDirection: VerticalDirection.down,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Center(
                        child: StepPage(),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.5),
                      Row(
                        children: [
                          MaterialButton(
                              child: Text('Atrás'),
                              hoverColor: Colors.blue.shade300,
                              onPressed: () {
                                Get.back();
                              }),
                          Spacer(flex: 1),
                          MaterialButton(
                              child: Text('Siguiente'),
                              hoverColor: Colors.blue.shade300,
                              onPressed: () {})
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            floatingActionButton: Container(
              height: MediaQuery.of(context).size.height * 1,
              child: const WhatsappButton(),
            ),
            persistentFooterButtons: [
              CreateFooter(),
            ]),
      ],
    );
  }
}
