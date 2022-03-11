// Suppose we need to make use of our own custom RaisedButton,
// FlatButton, OutlineButton, Divider, CircularLoader, etc which we can use
// throughout our application then that kind of customization widgets
// we can add inside the file widget.dart which will be present inside the folder widgets

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/constants/assest_path.dart';
import 'package:muevete_paquete/utils/ui/create_account/create_account.dart';
import 'package:muevete_paquete/utils/ui/dashboard/dashboard.dart';
import 'package:muevete_paquete/utils/ui/privacy_policies/privacy%20policies.dart';
import 'package:sizer/sizer.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          shadowColor: Colors.grey,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
    );
  }
}

class IconNavBar extends StatelessWidget {
  const IconNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo_Project.gif'),
          ),
        ],
      ),
    );
  }
}

class CircleAvatarAppBar extends StatelessWidget {
  const CircleAvatarAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 12.0),
      child: CircleAvatar(
        child: Text('US'),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class logoApp extends StatelessWidget {
  const logoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // centers horizontally
      crossAxisAlignment: CrossAxisAlignment.center, // centers vertically
      children: <Widget>[
        AssetImages(),
        Text(
          'MUEVETE PAQUETE',
          style: TextStyle(color: Colors.black),
        ),
        SizedBox(
          width: 3,
        ),
      ],
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
    return Column(
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height * 0.2),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Text(
                    'La solución a tus envíos',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Text(
                  'Dolor deserunt culpa nostrud et veniam anim aliquip irure excepteur.\nisi nisi veniam aute consequat nostrud exercitation sit laboris exercitation fugiat voluptate.',
                  style: TextStyle(fontSize: 15.0),
                ),
                SizedBox(height: 25.0),
                MaterialButton(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 15.0),
                        child: const Text('Comenzar'),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  elevation: 0.0,
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(LoginForm());
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WhatsappButton extends StatelessWidget {
  const WhatsappButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Align(
        alignment: Alignment(1, 1),
        child: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.whatsapp),
          backgroundColor: Colors.green.shade800,
          onPressed: () async {
            const url = 'https://wa.me/+5353850659';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
        ),
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
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Card(
                    elevation: 8.0,
                    shadowColor: Colors.black,
                    child: Column(children: <Widget>[
                      Text(
                        'Enviar Paquete',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Nostrud in nisi \nconsectetur \nlaborum qui \n ',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ]),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Card(
                    elevation: 8.0,
                    shadowColor: Colors.black,
                    child: Column(children: <Widget>[
                      Text(
                        'Llevar Paquete',
                        textAlign: TextAlign.center,
                        // overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Ullamco excepteur velit \nnostrud duis nisi \nsint ad consectetur culpa eu velit voluptate ea.',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ]),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
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

    return Center(
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
                        _name(),
                        SizedBox(height: 20.0),
                        _password(),
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
                        _buttonLogin(),
                      ],
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
    );
  }

  Widget _buttonLogin() {
    return MaterialButton(
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.1,
            padding: EdgeInsets.all(12.0),
            child: Center(
              child: Text('Iniciar'),
            ),
          );
        },
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0.0,
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () {
        Get.to(Dashboard());
      },
    );
  }

  Widget _name() {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.3,
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle_outlined, color: Colors.blue),
                  hintText: 'Nombre',
                  labelText: 'Usuario',
                ),
              ),
            ],
          ),
        );
      },
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

var selectedloc = 0;
List<String> locs = ['Package', 'Vuelos'];

class HomeTop extends StatefulWidget {
  @override
  _HomeTop createState() => _HomeTop();
}

class _HomeTop extends State<HomeTop> {
  var isFlightselected = true;
  TextEditingController c = TextEditingController(text: locs[1]);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.shortestSide;
    final height = MediaQuery.of(context).size.longestSide;

    return Stack(
      children: <Widget>[
        ClipPath(
          //  clipper: Clipper08(),
          child: Container(
            height: height * .3 > 400 ? height * .7 : 400,
            //400
            decoration: BoxDecoration(
                // color: Colors.blue,
                ),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'Servicios',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.0375),
                  Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 32.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: TextField(
                        controller: c,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                        cursorColor: Colors.blue,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 13),
                            suffixIcon: Material(
                              child: InkWell(
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return DashboardDetail(
                                        fromloc: locs[selectedloc],
                                        toloc: c.text);
                                  }));
                                },
                              ),
                              elevation: 2.0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        child: Choice08(
                            icon: Icons.flight_takeoff,
                            text: "Flights",
                            selected: isFlightselected),
                        onTap: () {
                          setState(() {
                            isFlightselected = true;
                          });
                        },
                      ),
                      SizedBox(
                        width: width * 0.055,
                      ),
                      InkWell(
                        child: Choice08(
                            icon: Icons.shop_two_rounded,
                            text: "Packages",
                            selected: !isFlightselected),
                        onTap: () {
                          setState(() {
                            isFlightselected = false;
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Choice08 extends StatefulWidget {
  final IconData? icon;
  final String? text;
  final bool? selected;
  Choice08({this.icon, this.text, this.selected});
  @override
  _Choice08State createState() => _Choice08State();
}

class _Choice08State extends State<Choice08>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      decoration: widget.selected!
          ? BoxDecoration(
              color: Colors.white.withOpacity(.30),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            widget.icon,
            size: 20,
            color: Colors.black,
          ),
          SizedBox(
            width: 25.0,
          ),
          Text(
            widget.text!,
            style: TextStyle(color: Colors.black, fontSize: 16),
          )
        ],
      ),
    );
  }
}

// final Color discountBackground = prefix0.appTheme.primaryColor;
// final Color flightColor = prefix0.appTheme.primaryColor;
// final Color chipBackground =
//     prefix0.appTheme.secondaryHeaderColor.withOpacity(.2);
// final Color borderColor = prefix0.appTheme.primaryColor.withAlpha(100);
String? fromlocation;
String? tolocation;

class DashboardDetail extends StatelessWidget {
  final String? fromloc;
  final String? toloc;
  DashboardDetail({this.fromloc, this.toloc});

  @override
  Widget build(BuildContext context) {
    fromlocation = fromloc;
    tolocation = toloc;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Search Result',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[StackTop(), StackDown()],
          ),
        ));
  }
}

class StackDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Best Deals for Next 6 Months',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                FlightCard(
                  date: "01 Far 1399",
                  percentOff: "34",
                  price: "500",
                  rating: 3.5,
                  flightTo: "Rafsanjani",
                  oldprice: "999",
                ),
                FlightCard(
                  date: "02 Esf 1398",
                  percentOff: "45",
                  price: "600",
                  rating: 5,
                  flightTo: "Rafsanjani",
                  oldprice: "1000",
                ),
                FlightCard(
                  date: "01 Far 1399",
                  percentOff: "34",
                  price: "300",
                  rating: 3.5,
                  flightTo: "Rafsanjani",
                  oldprice: "999",
                ),
                FlightCard(
                  date: "02 Esf 1398",
                  percentOff: "45",
                  price: "700",
                  rating: 5,
                  flightTo: "Rafsanjani",
                  oldprice: "1000",
                ),
              ],
            )
          ],
        ));
  }
}

class StackTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Key from;
    // Key to;
    return Material(
      elevation: 0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            // clipper: Clipper08(),
            child: Container(
              height: 20.0, //400
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                margin: EdgeInsets.symmetric(horizontal: 35.0),
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(35.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              /*prefix0.locs[0]*/ fromlocation! +
                                  /* ' Beauty and old place */ '\n (City name Can have any lentgh)',
                              style: TextStyle(fontSize: 16.0),
                              // key: from,
                            ),
                            Divider(
                              color: Colors.black12,
                              height: .04,
                            ),
                            Text(
                              /*prefix0.locs[1]*/ tolocation! /*+ ' Imam reza Holy Shrine'*/,
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                              // key: to,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Expanded(
                          flex: 1,
                          child: IconButton(
                              icon: Icon(
                                Icons.import_export,
                                color: Colors.black,
                                size: .07,
                              ),
                              onPressed: () {}))
                    ],
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

class FlightCard extends StatelessWidget {
  final String? price;
  final String? flightTo;
  final String? percentOff;
  final String? date;
  final double? rating;
  final String? oldprice;

  FlightCard(
      {this.date,
      this.flightTo,
      this.percentOff,
      this.price,
      this.rating,
      this.oldprice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Stack(
          children: <Widget>[
            Container(
              //height: prefix0.height/6,
              width: .8,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.lerp(
                    Radius.elliptical(10, 20), Radius.circular(20), 2)!),
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        price! + '\$',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: .02,
                      ),
                      Text(
                        oldprice! + '\$',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: .03,
                  ),
                  Wrap(
                    spacing: 5.0,
                    runSpacing: -5.0,
                    children: <Widget>[
                      Tag(
                        label: date!,
                        avatar: Icon(
                          Icons.calendar_today,
                          size: 18,
                        ),
                      ),
                      Tag(
                        label: flightTo!,
                        avatar: Icon(Icons.flight_takeoff, size: 18),
                      ),
                      Tag(
                        label: rating.toString(),
                        avatar: Icon(Icons.star, size: 18),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: .025,
              right: 15,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 3),
                width: .09,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  // color: discountBackground.withOpacity(.2)),
                ),
                child: Center(
                  child: Text(
                    percentOff! + '%',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      // color: discountBackground),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tag extends StatelessWidget {
  String? label;
  Widget? avatar;

  Tag({this.avatar, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: RawChip(
        label: Text(
          label!,
        ),
        labelStyle: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 8, color: Colors.black),
        avatar: avatar,
        // backgroundColor: chipBackground,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}

class CreateFooter extends StatelessWidget {
  const CreateFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: Text('MUEVETE PAQUETE'),
                  ),
                ),
                Container(
                  child: TextButton(
                      onPressed: () {
                        Get.to(
                          PrivacyPoliciesPage(),
                        );
                      },
                      child: Text('Políticas de privacidad')),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: TextButton(
                      onPressed: () {
                        Get.to(
                          LoginForm(),
                        );
                      },
                      child: Text('Términos y condiciones')),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(FontAwesomeIcons.twitter),
                tooltip: 'Twitter',
                color: Colors.blue,
                onPressed: () {},
              ),
              SizedBox(width: 10.0),
              IconButton(
                icon: Icon(FontAwesomeIcons.facebook),
                tooltip: 'Facebook',
                color: Colors.blue,
                onPressed: () {},
              ),
              SizedBox(width: 10.0),
              IconButton(
                icon: Icon(FontAwesomeIcons.instagram),
                tooltip: 'Instagram',
                color: Colors.red,
                onPressed: () {},
              ),
              SizedBox(width: 10.0),
            ],
          ),
        ],
      ),
    );
    // body: new FooterView(
    //   children: <Widget>[
    //     Container(
    //       height: MediaQuery.of(context).size.height * 0.02,
    //       child: Expanded(
    //         child: Padding(
    //           padding: const EdgeInsets.all(20),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: <Widget>[
    //               RichText(
    //                 text: TextSpan(
    //                   text: 'MUEVETE PAQUETE',
    //                 ),
    //               ),
    //               SizedBox(
    //                 width: MediaQuery.of(context).size.width * 0.1,
    //               ),
    //               RichText(
    //                 text: TextSpan(
    //                   children: [
    //                     TextSpan(
    //                         text: "Política de privacidad",
    //                         style: TextStyle(color: Colors.blue),
    //                         recognizer: TapGestureRecognizer()
    //                           ..onTap = () {}),
    //                   ],
    //                 ),
    //               ),
    //               SizedBox(
    //                 width: MediaQuery.of(context).size.width * 0.09,
    //               ),
    //               RichText(
    //                 text: TextSpan(
    //                   children: [
    //                     TextSpan(
    //                         text: "Términos y condiciones",
    //                         style: TextStyle(color: Colors.blue),
    //                         recognizer: TapGestureRecognizer()
    //                           ..onTap = () {}),
    //                   ],
    //                 ),
    //               ),
    //               Spacer(),
    //               FaIcon(FontAwesomeIcons.twitter, color: Colors.blue),
    //               SizedBox(
    //                 width: MediaQuery.of(context).size.width * 0.01,
    //               ),
    //               FaIcon(FontAwesomeIcons.facebook, color: Colors.blue),
    //               SizedBox(
    //                 width: MediaQuery.of(context).size.width * 0.01,
    //               ),
    //               Container(
    //                   child: FaIcon(FontAwesomeIcons.instagram,
    //                       color: Colors.red),
    //                   margin: EdgeInsets.only(right: 15.0)),
    //             ],
    //           ),
    //         ),
    //       ),
    //     )
    //   ],
    //   footer: new Footer(
    //     child: Text(''),
    //     padding: EdgeInsets.all(50.0),
    //     backgroundColor: Colors.blue,
    //     alignment: Alignment.center,
    //   ),
    //   flex: 2, //default flex is 2
    // ),
  }

// class ResponsiveWidget extends StatelessWidget {
//   const ResponsiveWidget({Key? key, required Scaffold child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         builder: (context, widget) => ResponsiveWrapper.builder(
//               BouncingScrollWrapper.builder(context, widget!),
//               maxWidth: 900,
//               minWidth: 450,
//               defaultScale: true,
//               breakpoints: [
//                 const ResponsiveBreakpoint.resize(450, name: MOBILE),
//                 const ResponsiveBreakpoint.autoScale(800, name: TABLET),
//                 const ResponsiveBreakpoint.resize(900, name: DESKTOP),
//                 const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
//               ],
//             ));
//   }
// }
}

class EdgeInsetGeometry {}
