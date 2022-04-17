import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/core/privacy_policies/privacy%20policies.dart';
import 'package:muevete_paquete/core/users/ui/create_account/create_account.dart';
import 'package:muevete_paquete/widgets/logo_app_mobile.dart';

import 'login_controller.dart';

class LoginMobile extends GetResponsiveView<LoginController> {
  @override
  LoginMobile({Key? key}) : super(key: key) {
    Get.put(LoginController());
  }

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final pwdController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Center(
                            child: LogoAppMobile(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Center(
                      child: Form(
                        key: controller.loginFormKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            padding: EdgeInsets.symmetric(vertical: 39.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 6.0,
                                    offset: Offset(0.0, 5.0),
                                    spreadRadius: 3.0)
                              ],
                            ),
                            child: Container(
                              constraints: BoxConstraints(),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Iniciar Sesión',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color(0xFF00B0FF)),
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
                                    onHover: (value) {},
                                    onPressed: () {
                                      Get.to(PrivacyPoliciesPage());
                                    },
                                    child: Text(
                                      'Política de Privacidad',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  _buttonLogin(nameController, pwdController),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    _optionsLogin(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonLogin(nameController, pwdController) {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return RawKeyboardListener(
          autofocus: true,
          focusNode: FocusNode(),
          onKey: (event) {
            if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
              controller.checkLogin();
            }
          },
          child: MaterialButton(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              padding: EdgeInsets.all(12.0),
              child: Center(
                child: Text('Iniciar'),
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            elevation: 0.0,
            color: Color(0xFF00B0FF),
            textColor: Colors.white,
            autofocus: true,
            onPressed: () {
              controller.checkLogin();
            },
          ),
        );
      },
    );
  }

  Widget _name(nameController) {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
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
                  icon: Icon(Icons.account_circle_outlined,
                      color: Color(0xFF00B0FF)),
                  hintText: 'Nombre',
                  labelText: 'Usuario',
                  errorText: snapshot.error?.toString(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _password(pwdController) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        controller: controller.passwordController,
        onSaved: (value) {
          controller.password = value!;
        },
        validator: (value) {
          return controller.validatePassword(value!);
        },
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock_outline_rounded, color: Color(0xFF00B0FF)),
          labelText: 'Contraseña',
        ),
      ),
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
                color: Color(0xFF00B0FF),
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
                color: Color(0xFF00B0FF),
              ),
              SizedBox(width: 4.0),
              TextButton(
                onPressed: () {
                  Get.to(CreateAccount());
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
                color: Color(0xFF00B0FF),
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
