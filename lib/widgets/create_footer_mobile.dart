import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CreateFooterMobile extends StatelessWidget {
  const CreateFooterMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
