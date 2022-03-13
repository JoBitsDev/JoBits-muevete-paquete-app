import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/core/pages/create_account/create_account.dart';
import 'package:muevete_paquete/core/pages/dashboard/dashboard.dart';
import 'package:muevete_paquete/core/pages/privacy_policies/privacy%20policies.dart';
import 'package:muevete_paquete/widgets/widget.dart';
import 'package:sizer/sizer.dart';

import 'login_controller.dart';

class Login extends GetView<LoginController> {
  Login() {
    Get.put(LoginController());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final nameController = TextEditingController();
    final pwdController = TextEditingController();

    return Sizer(
      builder:
          (BuildContext context, Orientation orientation, DeviceType mobile) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(color: Colors.grey.shade200),
            width: MediaQuery.of(context).size.width * 1,
            child: Scaffold(
              body: Center(
                child: Container(
                  child: Scaffold(
                    backgroundColor: Colors.grey.shade300,
                    body: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Center(
                          child: Container(
                            width: size.width * 0.40,
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: logoApp(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Center(
                          child: Form(
                            key: controller.loginFormKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Container(
                              width: size.width * 0.20,
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              padding: EdgeInsets.symmetric(vertical: 30.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.0),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6.0,
                                        offset: Offset(0.0, 5.0),
                                        spreadRadius: 3.0)
                                  ]),
                              child: Container(
                                constraints: BoxConstraints(),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Iniciar Sesión',
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    _name(nameController),
                                    SizedBox(height: 20.0),
                                    _password(pwdController),
                                    SizedBox(height: 20.0),
                                    Text('Si inicias sesión aceptas nuestra'),
                                    TextButton(
                                      onHover: (value) {
                                        final Color? hoverColor;
                                      },
                                      onPressed: () {
                                        Get.to(PrivacyPoliciesPage());
                                      },
                                      child: Text(
                                        'Política de Privacidad',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    _buttonLogin(nameController, pwdController),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        _optionsLogin(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buttonLogin(nameController, pwdController) {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return MaterialButton(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.1,
              padding: EdgeInsets.all(12.0),
              child: Center(
                child: Text('Iniciar'),
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            elevation: 0.0,
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              controller.checkLogin();
              // Get.to(Dashboard());
            });
      },
    );
  }

  Widget _name(nameController) {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: controller.nameController,
                  onSaved: (value) {
                    controller.name = value!;
                  },
                  validator: (value) {
                    return controller.validateName(value!);
                  },
                  decoration: InputDecoration(
                    icon:
                        Icon(Icons.account_circle_outlined, color: Colors.blue),
                    hintText: 'Nombre',
                    labelText: 'Usuario',
                    errorText: snapshot.error?.toString(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _password(pwdController) {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
            controller: controller.passwordController,
            onSaved: (value) {
              controller.name = value!;
            },
            validator: (value) {
              return controller.validatePassword(value!);
            },
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock_outline_rounded, color: Colors.blue),
              labelText: 'Contraseña',
            ),
          ),
        );
      },
    );
  }

  Widget _optionsLogin() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                (FontAwesomeIcons.google),
                color: Colors.blue,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Iniciar sesión con Google',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.0),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 15.0),
              Icon(
                (FontAwesomeIcons.user),
                color: Colors.blue,
              ),
              SizedBox(width: 2.0),
              TextButton(
                onPressed: () {
                  Get.to(
                    CreateAccount(),
                  );
                },
                child: Text(
                  '¿Desea crear nueva cuenta?',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15.0),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                (FontAwesomeIcons.lock),
                color: Colors.blue,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  '¿Olvidaste tú contraseña?',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
