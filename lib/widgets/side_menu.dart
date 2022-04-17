import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/constants/style.dart';
import 'package:muevete_paquete/controllers/menu_controllers.dart';
import 'package:muevete_paquete/routing/routes.dart';
import 'package:muevete_paquete/utils/ui/responsiveWidget.dart';
import 'package:muevete_paquete/widgets/side_menu_item.dart';
import 'package:muevete_paquete/widgets/widget.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: EdgeInsets.zero,
                      child:
                          Image.asset("assets/images/logoMuevetePaquete.jpeg"),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Muevete Paquete",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: _width / 48),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map(
                  (itemName) => SideMenuItem(
                      itemName: itemName,
                      onTap: () {
                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveItemTo(itemName);
                          if (ResponsiveWidget.isSmallScreen(context))
                            Get.back();
                        }
                      }),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
