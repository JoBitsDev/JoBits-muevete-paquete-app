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
        titleSpacing: 10.0,
        actions: const <Widget>[
          AssetImages(),
        ],
      ),
      drawer: const DrawerMenu(),
      body: Center(
        child: Column(
          children: const <Widget>[
            SizedBox(height: 10.0),
            ElementsBody(),
            Divider(),
            Text(
              'Laboris nulla Lorem veniam cillum et enim consectetur. Proident incididunt in nulla dolor aliqua. Dolore sit officia eiusmod eiusmod qui nisi. Magna culpa et amet incididunt. Pariatur adipisicing in nisi do deserunt aliqua excepteur anim excepteur excepteur mollit reprehenderit veniam. Anim labore veniam nostrud ut anim amet adipisicing mollit officia sit ea.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 80.0),
            ButtonBody(),
            SizedBox(height: 30.0),
            Divider(
              color: Colors.black,
            ),
            TextBody(),
            SizedBox(height: 20.0),
            ServicesHorizontal(),
          ],
        ),
      ),
      floatingActionButton: const WhatsappButton(),
    );
  }
}
