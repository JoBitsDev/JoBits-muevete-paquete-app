import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/constants/style.dart';
import 'package:muevete_paquete/routing/routes.dart';

class SideMenuController extends GetxController {
  static SideMenuController instance = Get.find();
  var activeItem = CrearPaquetePageRoute.obs;
  var hoverItem = "".obs;
  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName, bool value) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;

  Widget? returnIconFor(String itemName) {
    switch (itemName) {
      case CrearPaquetePageRoute:
        return _customIcon(Icons.add_box, itemName);

      case CrearPaquetePageRoute:
        return _customIcon(Icons.add_box, itemName);
      case GestionarPaquetePageRoute:
        return _customIcon(Icons.check_box_outline_blank_sharp, itemName);
      case NuevoViajePaquetePageRoute:
        return _customIcon(Icons.delivery_dining_rounded, itemName);

      case PublicarPaquetePageRoute:
        return _customIcon(Icons.add_box, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName))
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
