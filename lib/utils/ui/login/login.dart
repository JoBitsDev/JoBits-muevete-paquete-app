import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/widgets/widget.dart';

import 'login_controller.dart';

class Login extends GetView<LoginController> {
  Login() {
    Get.put(LoginController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
