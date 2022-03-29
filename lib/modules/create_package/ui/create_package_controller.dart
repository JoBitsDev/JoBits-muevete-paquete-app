import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class CreatePackageController extends GetxController {
  final packagetKey = GlobalKey<FormState>();

//contructor

  late TextEditingController pesoController,
      contenidoController,
      prioritarioController,
      tipoEnvolturaController,
      puntosAduanalesController,
      estadoController,
      fragilController,
      fechaCreacionController,
      direccionEntregaController,
      precioAPagarController;

  var peso = '';
  var contenido = '';
  var prioritario = '';
  var tipoEnvoltura = '';
  var puntosAduanales = '';
  var estado = '';
  var fragil = '';
  var fechaCreacion = '';
  var direccionEntrega = '';
  var precioAPagar = '';

  @override
  void onInit() {
    pesoController = TextEditingController();
    contenidoController = TextEditingController();
    prioritarioController = TextEditingController();
    tipoEnvolturaController = TextEditingController();
    puntosAduanalesController = TextEditingController();
    estadoController = TextEditingController();
    fragilController = TextEditingController();
    fechaCreacionController = TextEditingController();
    direccionEntregaController = TextEditingController();
    precioAPagarController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    pesoController.dispose();
    contenidoController.dispose();
    prioritarioController.dispose();
    tipoEnvolturaController.dispose();
    puntosAduanalesController.dispose();
    estadoController.dispose();
    fragilController.dispose();
    fechaCreacionController.dispose();
    fechaCreacionController.dispose();
    direccionEntregaController.dispose();
    precioAPagarController.dispose();
    super.onClose();
  }

  // String? validateName(String value) {
  //   if (value.isEmpty) {
  //     return "* Required";
  //   } else if (!GetUtils.isLengthGreaterThan(nameController.text, 4)) {
  //     return 'Escriba nombre correcto';
  //   } else {
  //     return null;
  //   }
  // }

  // String? validatePassword(String value) {
  //   if (value.isEmpty) {
  //     return "* Required";
  //   } else if (value.length <= 6) {
  //     return ' La contraseña no puede ser menor a 6 caracteres';
  //   } else {
  //     return null;
  //   }
  // }

  // String? validateRepeatPassword(String value) {
  //   if (value.isEmpty) {
  //     return "* Required";
  //   } else if (value != passwordController.text) {
  //     return ' Las contraseñas no coinciden';
  //   } else {
  //     return null;
  //   }
  // }

  // String? validateEmail(String value) {
  //   if (value.isEmpty) {
  //     return "* Required";
  //   } else if (!GetUtils.isEmail(value)) {
  //     return ' Introduzca email correcto';
  //   } else {
  //     return null;
  //   }
  // }

  // void checkAccount() async {
  //   final isValid = packagetKey.currentState!.validate();
  //   if (!isValid) {
  //     return;
  //   }
  //   createAccount();
  //   // accountKey.currentState!.save();
  // }

  // void createAccount() async {
  //   final user = ParseUser.createUser(
  //       nameController.text,
  //        passwordController.text,
  //        emailController.text);

  //   var response = await user.signUp();

  //   if (response.success) {
  //     Get.back();

  //     clearForm();
  //   } else {
  //     showError(response.error!.message);
  //   }
  // }

  // void showError(String message) {
  //   Get.snackbar(
  //     'Error',
  //     message,
  //     snackPosition: SnackPosition.BOTTOM,
  //     backgroundColor: Colors.red,
  //     colorText: Colors.white,
  //     margin: EdgeInsets.all(10),
  //     snackStyle: SnackStyle.FLOATING,
  //     duration: Duration(seconds: 3),
  //   );
  // }

  // void clearForm() {
  //   pesoController.clear();
  //   contenidoController.clear();
  //   prioritarioController.clear();
  //   tipoEnvolturaController.clear();
  //   puntosAduanalesController.clear();
  //   estadoController.dispose();
  //   fragilController.clear();
  //   fechaCreacionController.clear();
  //   fechaCreacionController.clear();
  //   direccionEntregaController.clear();
  //   precioAPagarController.clear();
  // }
}
