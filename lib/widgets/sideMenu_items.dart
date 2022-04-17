import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/constants/style.dart';
import 'package:muevete_paquete/controllers/menu_controllers.dart';
import 'package:muevete_paquete/widgets/widget.dart';

class SideMenuItems extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const SideMenuItems({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        value
            ? menuController.onHover(itemName, value)
            : menuController.onHover("not hovering", value);
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName)
              ? lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                child: Container(
                  width: 6,
                  height: 72,
                  color: dark,
                ),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
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
                        ),
                      )
                    else
                      Flexible(
                        child: CustomText(
                            text: itemName,
                            color: menuController.isHovering(itemName),
                            size: 18,
                            weight: FontWeight.bold),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
