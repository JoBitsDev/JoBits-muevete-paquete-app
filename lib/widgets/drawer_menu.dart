import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/modules/create_package/ui/create_package.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logoMuevetePaquete.jpeg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.boxes, color: Colors.blue.shade500),
            title: const Text('Crear Paquete'),
            onTap: () {
              Get.to(CreatePackage());
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.planeArrival,
                color: Colors.blue.shade500),
            title: const Text('Gestionar Viaje'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.planeDeparture,
                color: Colors.blue.shade500),
            title: const Text('Nuevo Viaje'),
            onTap: () {},
          ),
          ListTile(
            leading:
                Icon(FontAwesomeIcons.fileUpload, color: Colors.blue.shade500),
            title: const Text('Publicar Paquete'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
