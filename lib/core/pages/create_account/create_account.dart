import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muevete_paquete/core/pages/login/login.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Text(
                          'Crear Cuenta',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.09,
                        ),
                        Form(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              _createNombre(),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              _createPassword(),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              _createRepeatPassword(),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              _createEmailAdress(),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              Row(
                                children: [
                                  _createCancelButton(),
                                  Spacer(),
                                  _createSubmitButton(),
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
}

Widget _createSubmitButton() {
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
    onPressed: () {
      Get.to(Login());
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
      Get.to(Login());
    },
  );
}

Widget _createEmailAdress() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
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

Widget _createRepeatPassword() {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      icon: Icon(
        FontAwesomeIcons.lock,
      ),
      labelText: 'Repita Contraseña',
    ),
  );
}

Widget _createPassword() {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      icon: Icon(
        FontAwesomeIcons.lock,
      ),
      labelText: 'Contraseña',
    ),
  );
}

Widget _createNombre() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      icon: Icon(
        FontAwesomeIcons.user,
      ),
      labelText: 'Nombre',
    ),
  );
}
