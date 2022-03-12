import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/widgets/widget.dart';
import 'package:sizer/sizer.dart';

import 'login_controller.dart';

class Login extends GetView<LoginController> {
  Login() {
    Get.put(LoginController());
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:
          (BuildContext context, Orientation orientation, DeviceType mobile) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(color: Colors.grey.shade200),
            width: MediaQuery.of(context).size.width * 0.6,
            child: Scaffold(
              body: LoginForm(),
            ),
          ),
        );
      },
    );
  }
}
