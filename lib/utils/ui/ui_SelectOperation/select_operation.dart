import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:muevete_paquete/constants/assest_path.dart';
import 'package:muevete_paquete/utils/ui/ui_SelectOperation/select_Operation_controller.dart';
import 'package:muevete_paquete/widgets/widget.dart';

class SelectOperation extends GetView<SelectOperationController> {
  const SelectOperation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        actions: <Widget>[
          AssetImages(),
        ],
      ),
      drawer: const DrawerMenu(),
      body: Center(
        child: Column(
          children: const <Widget>[
            ElementsBody(),
            Divider(),
            Text('Descripción Plataforma(Texto)'),
            SizedBox(height: 80.0),
            ButtonBody(),
            Divider(
              color: Colors.black,
            ),
            TextBody(),
          ],
        ),
      ),
      floatingActionButton: const WhatsappButton(),
    );
  }
}
