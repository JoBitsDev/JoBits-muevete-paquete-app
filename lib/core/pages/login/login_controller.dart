import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'login_model.dart';

class LoginController extends GetxController {
  LoginViewModel model = LoginViewModel();

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController nameController, passwordController;
  var name = '';
  var password = '';
  @override
  void onInit() {
    // Simulating obtaining the user name from some local storage
    nameController = TextEditingController();
    passwordController = TextEditingController();

    super.onInit();
  }

  @override
  void onClose() {
    nameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String? validateName(String value) {
    if (!GetUtils.isLengthGreaterThan(nameController.text, 4)) {
      return 'Escriba nombre válido';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length <= 6) {
      return ' La contraseña no puede ser menor a 6 caracteres';
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }
}
