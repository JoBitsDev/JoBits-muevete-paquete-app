import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/modules/dashboard/dashboard.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'login_model.dart';

class LoginController extends GetxController {
  LoginViewModel model = LoginViewModel();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

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
    doLogin();
    loginFormKey.currentState!.save();
  }

  void doLogin() async {
    final user = ParseUser(nameController.text, passwordController.text, null);

    var response = await user.login();

    if (response.success) {
      showSuccess("User was successfully login!");
      nameController.text = "";
      passwordController.text = "";
      Get.to(Dashboard());
      TextField(controller: TextEditingController());
      TextField(controller: TextEditingController());
    } else {
      showError(response.error!.message);
    }
  }

  void showError(message) {
    Get.snackbar(
      "Error",
      message,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(10),
      duration: Duration(seconds: 3),
    );
  }

  void showSuccess(String s) {
    Get.snackbar(
      "Success",
      s,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(10),
      duration: Duration(seconds: 3),
    );
  }
}
