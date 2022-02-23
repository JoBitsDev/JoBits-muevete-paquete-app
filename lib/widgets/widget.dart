// Suppose we need to make use of our own custom RaisedButton,
// FlatButton, OutlineButton, Divider, CircularLoader, etc which we can use
// throughout our application then that kind of customization widgets
// we can add inside the file widget.dart which will be present inside the folder widgets
import 'package:flutter/material.dart';

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
            title: const Text('Elements'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.pages, color: Colors.blue),
            title: const Text('Elements'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.pages, color: Colors.blue),
            title: const Text('Elements'),
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
        onPressed: () {});
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

class ServicesHorizontal extends StatelessWidget {
  const ServicesHorizontal({Key? key}) : super(key: key);

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
