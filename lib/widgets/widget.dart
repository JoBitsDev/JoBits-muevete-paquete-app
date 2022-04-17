import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/core/privacy_policies/privacy%20policies.dart';
import 'package:muevete_paquete/core/term_and_conditions/term_Condition.dart';
import 'package:muevete_paquete/modules/create_package/ui/create_package.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WhatsappButton extends StatelessWidget {
  const WhatsappButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElasticIn(
      delay: Duration(milliseconds: 1100),
      child: SizedBox(
        child: Align(
          alignment: Alignment(1, 1),
          child: Flexible(
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
        ),
      ),
    );
  }
}

class WhatsappButtonMobile extends StatelessWidget {
  const WhatsappButtonMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElasticIn(
        delay: Duration(milliseconds: 1100),
        child: Container(
          padding: EdgeInsets.only(bottom: 3.0),
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
      ),
    );
  }
}

class CardsServicesHorizontal extends StatelessWidget {
  final VoidCallback itemName;

  final String onTap;

  const CardsServicesHorizontal(this.itemName, this.onTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Card(
                elevation: 8.0,
                shadowColor: Colors.black,
                child: Column(children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Get.to(
                        CreatePackage(onTap, itemName),
                      );
                    },
                    child: Text(
                      'Enviar Paquete',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
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
              padding: EdgeInsets.only(right: 20.0),
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Card(
                elevation: 8.0,
                shadowColor: Colors.black,
                child: Column(children: const <Widget>[
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
    );
  }
}

// ignore: must_be_immutable

class CreateFooter extends StatelessWidget {
  const CreateFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: Duration(milliseconds: 1000),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20.0),
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
                        TermConditionPage(),
                      );
                    },
                    child: Text('Términos y condiciones')),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(FontAwesomeIcons.twitter),
                tooltip: 'Twitter',
                color: Color(0xFF00B0FF),
                onPressed: () async {
                  const url = 'https://wa.me/+5353850659';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
              SizedBox(width: 10.0),
              IconButton(
                icon: Icon(FontAwesomeIcons.facebook),
                tooltip: 'Facebook',
                color: Color(0xFF00B0FF),
                onPressed: () async {
                  const url =
                      'https://www.facebook.com/profile.php?id=100030927611036';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
              SizedBox(width: 10.0),
              IconButton(
                icon: Icon(FontAwesomeIcons.instagram),
                tooltip: 'Instagram',
                color: Colors.red,
                onPressed: () async {
                  const url = 'https://wa.me/+5353850659';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
              SizedBox(width: 10.0),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  const CustomText(
      {Key? key,
      required this.text,
      required this.size,
      required this.color,
      required this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: size ?? 16,
            color: color ?? Colors.black,
            fontWeight: weight ?? FontWeight.normal));
  }
}
