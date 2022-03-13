//inhereted widget

import 'package:flutter/material.dart';
import 'package:muevete_paquete/core/pages/login/login_controller.dart';

class Provider extends InheritedWidget {
  Provider({Key? key, required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
