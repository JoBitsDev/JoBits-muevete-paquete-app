import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/core/pages/login/login.dart';

class CreateAccountController extends GetxController {
  final accountKey = GlobalKey<FormState>();

//contructor

  late TextEditingController nameController,
      passwordController,
      repeatPasswordController,
      emailController;
  var name = '';
  var password = '';
  var repeatPassword = '';
  var email = '';
  @override
  void onInit() {
    nameController = TextEditingController();
    passwordController = TextEditingController();
    repeatPasswordController = TextEditingController();
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    nameController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
    emailController.dispose();
    super.onClose();
  }

  String? validateName(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (!GetUtils.isLengthGreaterThan(nameController.text, 4)) {
      return 'Escriba nombre correcto';
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length <= 6) {
      return ' La contraseña no puede ser menor a 6 caracteres';
    } else {
      return null;
    }
  }

  String? validateRepeatPassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value != passwordController.text) {
      return ' Las contraseñas no coinciden';
    } else {
      return null;
    }
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (!GetUtils.isEmail(value)) {
      return ' Introduzca email correcto';
    } else {
      return null;
    }
  }

  void checkAccount() {
    final isValid = accountKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      Get.back();

      ;
    }
    accountKey.currentState!.save();
  }
}
