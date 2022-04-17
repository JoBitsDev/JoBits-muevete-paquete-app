import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/core/privacy_policies/privacy%20policies.dart';
import 'package:muevete_paquete/core/users/ui/create_account/create_account.dart';
import 'package:muevete_paquete/core/users/ui/login/framework/login_mobile.dart';
import 'package:muevete_paquete/core/users/ui/login/framework/login_web.dart';
import 'package:muevete_paquete/widgets/logo_app.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import 'login_controller.dart';

class Login extends GetResponsiveView<LoginController> {
  @override
  Login({Key? key}) : super(key: key) {
    Get.put(LoginController());
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: LoginMobile(), desktop: LoginWeb());
  }
}
