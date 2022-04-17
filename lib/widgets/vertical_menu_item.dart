import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/constants/style.dart';
import 'package:muevete_paquete/controllers/menu_controllers.dart';
import 'package:muevete_paquete/widgets/widget.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const VerticalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        onHover: (value) {
          value
              ? menuController.onHover(itemName, value)
              : menuController.onHover("not hovering", value);
        },
        child: Obx(() => Container(
              color: menuController.isHovering(itemName)
                  ? lightGrey.withOpacity(.1)
                  : Colors.transparent,
              child: Row(
                children: [
                  Visibility(
                    visible: menuController.isHovering(itemName) ||
                        menuController.isActive(itemName),
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Container(
                      width: 3,
                      height: 72,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: menuController.returnIconFor(itemName),
                          ),
                          if (!menuController.isActive(itemName))
                            Flexible(
                                child: CustomText(
                              text: itemName,
                              color: menuController.isHovering(itemName)
                                  ? dark
                                  : lightGrey,
                              size: 15,
                              weight: FontWeight.bold,
                            ))
                          else
                            Flexible(
                                child: CustomText(
                              text: itemName,
                              color: dark,
                              size: 18,
                              weight: FontWeight.bold,
                            ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
