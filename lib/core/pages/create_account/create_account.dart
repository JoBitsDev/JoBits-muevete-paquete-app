import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muevete_paquete/core/pages/create_account/create_account_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'create_account_controller.dart';

class CreateAccount extends GetResponsiveView<CreateAccountController> {
  @override
  Widget? phone();
  Widget? tablet();
  Widget? desktop();
  Widget? watch();

  CreateAccount() {
    Get.put(CreateAccountController());
  }
  final accountKey = new GlobalKey<FormState>(debugLabel: '_SomeState');

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController().text;

    final passwordController = TextEditingController().text;

    final repeatPasswordController = TextEditingController().text;

    final emailController = TextEditingController().text;

    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 1,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Text(
                          'Crear Cuenta',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        Form(
                          key: controller.accountKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              _createNombre(nameController),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              _createPassword(passwordController),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              _createRepeatPassword(repeatPasswordController),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              _createEmailAdress(emailController),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              Row(
                                children: [
                                  _createCancelButton(),
                                  Spacer(),
                                  _createSubmitButton(
                                      nameController,
                                      passwordController,
                                      repeatPasswordController,
                                      emailController),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget _createSubmitButton(nameController, passwordController,
      repeatPasswordController, emailController) {
    return MaterialButton(
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.1,
            padding: EdgeInsets.all(12.0),
            child: Center(
              child: Text('OK'),
            ),
          );
        },
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0.0,
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () async {
        controller.checkAccount();
      },
    );
  }

  Widget _createCancelButton() {
    return MaterialButton(
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.1,
            padding: EdgeInsets.all(12.0),
            child: Center(
              child: Text('Cancelar'),
            ),
          );
        },
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0.0,
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () {
        Get.back();
      },
    );
  }

  Widget _createEmailAdress(emailController) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: controller.emailController,
      onSaved: (value) {
        controller.email = value!;
      },
      validator: (value) {
        return controller.validateEmail(value!);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Email',
        icon: Icon(
          Icons.email,
        ),
        hintText: 'ejemplo@correo.com',
      ),
    );
  }

  Widget _createRepeatPassword(repeatPasswordController) {
    return TextFormField(
      obscureText: true,
      controller: controller.repeatPasswordController,
      onSaved: (value) {
        controller.repeatPassword = value!;
      },
      validator: (value) {
        return controller.validateRepeatPassword(value!);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        icon: Icon(
          FontAwesomeIcons.lock,
        ),
        labelText: 'Repita Contraseña',
      ),
    );
  }

  Widget _createPassword(pwdController) {
    return TextFormField(
      obscureText: true,
      controller: controller.passwordController,
      onSaved: (value) {
        controller.password = value!;
      },
      validator: (value) {
        return controller.validatePassword(value!);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        icon: Icon(
          FontAwesomeIcons.lock,
        ),
        labelText: 'Contraseña',
      ),
    );
  }

  Widget _createNombre(nameController) {
    return TextFormField(
      controller: controller.nameController,
      onSaved: (value) {
        controller.name = value!;
      },
      validator: (value) {
        return controller.validateName(value!);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        icon: Icon(
          FontAwesomeIcons.user,
        ),
        labelText: 'Nombre',
      ),
    );
  }
}
