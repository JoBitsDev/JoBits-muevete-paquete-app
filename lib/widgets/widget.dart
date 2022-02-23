// Suppose we need to make use of our own custom RaisedButton,
// FlatButton, OutlineButton, Divider, CircularLoader, etc which we can use
// throughout our application then that kind of customization widgets
// we can add inside the file widget.dart which will be present inside the folder widgets

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}

class IconNavBar extends StatelessWidget {
  const IconNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo_Project.gif'),
          ),
        ],
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo_Project.gif'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.pages, color: Colors.blue),
            title: const Text('Gestionar Paquete'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.pages, color: Colors.blue),
            title: const Text('Gestionar Viaje'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.pages, color: Colors.blue),
            title: const Text('Nuevo Viaje'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.pages, color: Colors.blue),
            title: const Text('Publicar Paquete'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class ElementsBody extends StatelessWidget {
  const ElementsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      Center(
        child: Text(
          'La solución a tus envíos',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    ]);
  }
}

class ButtonBody extends StatelessWidget {
  const ButtonBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
              child: const Text('Comenzar'),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        elevation: 0.0,
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: () {
          Get.to(LoginForm());
        });
  }
}

class TextBody extends StatelessWidget {
  const TextBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      Center(
        child: Text(
          'Servicios',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    ]);
  }
}

class WhatsappButton extends StatelessWidget {
  const WhatsappButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FloatingActionButton(
        child: const FaIcon(FontAwesomeIcons.whatsapp),
        backgroundColor: Colors.green.shade800,

        // child: Image.asset(
        //   'assets/images/whatsapp.png',
        // ),
        onPressed: () async {
          const url = 'https://wa.me/+5353850659';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
      ),
    );
  }
}

class CardsServicesHorizontal extends StatelessWidget {
  const CardsServicesHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 300.0, vertical: 10.0),
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 100.0,
                  width: 80.0,
                  child: Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text('Servicio 1', textAlign: TextAlign.center),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                child: SizedBox(
                  height: 100.0,
                  width: 80.0,
                  child: Card(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text('Servicio 2', textAlign: TextAlign.center),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[],
          ),
          SizedBox(
            height: 50.0,
          ),
          SafeArea(
              child: Container(
            width: size.width * 0.40,
            child: Column(
              children: <Widget>[
                Text('Logo'),
              ],
            ),
          )),
          SizedBox(
            height: 70.0,
          ),
          Center(
            child: Container(
              width: size.width * 0.20,
              margin: EdgeInsets.symmetric(horizontal: 40.0),
              padding: EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 3.0,
                        offset: Offset(0.0, 5.0),
                        spreadRadius: 3.0)
                  ]),
              child: Column(
                children: <Widget>[
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  _name(),
                  SizedBox(height: 30.0),
                  _password(),
                  SizedBox(height: 30.0),
                  _buttonLogin(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonLogin() {
    return MaterialButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: Text('Login'),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        elevation: 0.0,
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: () {});
  }

  Widget _name() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          icon: Icon(Icons.account_circle_outlined, color: Colors.blue),
          hintText: 'Nombre',
          labelText: 'Usuario',
        ),
      ),
    );
  }

  Widget _password() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.lock_outline_rounded, color: Colors.blue),
          labelText: 'Contraseña',
        ),
      ),
    );
  }

  Widget _createBackground(BuildContext context) {
    final backround = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(0, 85, 194, 5),
            Color.fromRGBO(0, 86, 193, 20),
          ],
        ),
      ),
    );
    return Stack(
      children: <Widget>[
        backround,
      ],
    );
  }
}
