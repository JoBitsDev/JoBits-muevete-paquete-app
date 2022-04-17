import 'package:flutter/material.dart';
import 'package:muevete_paquete/widgets/circle_avatar_app_bar.dart';
import 'package:muevete_paquete/widgets/drawer_menu.dart';
import 'package:muevete_paquete/widgets/logo_app.dart';
import 'package:muevete_paquete/widgets/side_menu.dart';

class PrivacyPoliciesPage extends StatefulWidget {
  const PrivacyPoliciesPage({Key? key}) : super(key: key);

  @override
  _PrivacyPoliciesPageState createState() => _PrivacyPoliciesPageState();
}

class _PrivacyPoliciesPageState extends State<PrivacyPoliciesPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(screenSize.width, 50),
            child: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white70,
              leading: null, // 1
              centerTitle: true,
              actions: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: CircleAvatarAppBar(),
                    ),
                  ],
                ),
              ],
              title: LogoApp(),
            ),
          ),
          drawer: SideMenu(),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                          text:
                              'Sunt nulla minim dolore irure dolore nulla et voluptate occaecat excepteur laboris. Esse sit nisi pariatur aute. Ipsum in Lorem dolore tempor est adipisicing excepteur quis.'
                              ' Magna fugiat excepteur in culpa eiusmod minim dolor elit. '
                              'Amet dolor fugiat veniam commodo ea minim aliquip commodo veniam ad nostrud reprehenderit eu dolor. Laborum veniam voluptate adipisicing id anim esse irure non. Proident ipsum enim sunt sit. Laboris aute nostrud incididunt sunt voluptate eiusmod cillum duis in.'
                              'Duis fugiat occaecat esse officia proident amet. Quis sunt nulla officia elit id. Fugiat eu nostrud ullamco Lorem consectetur ex dolore ipsum officia. Nisi voluptate proident adipisicing commodo esse elit pariatur dolor laboris nostrud.'
                              'Eu aliquip quis cupidatat officia. Amet do elit consequat minim incididunt ullamco laboris esse ad. Dolor fugiat cillum in consectetur occaecat commodo veniam pariatur dolore voluptate veniam nulla.'
                              'Exercitation ad aliqua dolore elit minim qui adipisicing elit non dolor voluptate sint non aliqua. Aliqua irure aliqua esse velit incididunt eu elit occaecat velit incididunt voluptate reprehenderit ea. Ea irure esse cupidatat et magna tempor.'
                              'Do nostrud ex et nisi incididunt fugiat nisi dolore sint. Elit nisi aute consequat occaecat amet excepteur minim et irure deserunt do. Id elit dolore esse minim dolore nostrud irure excepteur est dolore cillum consequat reprehenderit. Nostrud nulla et ad anim excepteur qui excepteur reprehenderit ex.'
                              'Commodo quis in consequat veniam sint dolor ea. Laborum excepteur qui ea qui et consequat mollit ipsum ex aliquip. Dolor qui magna excepteur amet irure minim mollit laborum est do nisi minim non aliquip. Incididunt sunt anim eiusmod tempor fugiat consectetur cupidatat excepteur. Laboris Lorem laboris cupidatat quis et cillum est. Occaecat do dolor consequat ullamco sit quis est ad aliqua. Minim commodo cillum anim ullamco reprehenderit cillum laboris sunt dolore consectetur eu est.'
                              'Dolor dolore voluptate eu et. Labore dolore irure elit laborum culpa ullamco amet commodo esse id non duis sunt eu. Sint veniam nulla duis laborum id ad in enim elit incididunt. Reprehenderit sint aliquip proident nisi irure officia est occaecat. Veniam laboris elit nulla excepteur adipisicing. Aliquip proident mollit ad magna voluptate cillum ullamco Lorem duis.'
                              'Laboris voluptate nostrud dolor exercitation sit veniam quis pariatur consequat cupidatat fugiat minim cupidatat sint. Labore anim ut amet Lorem eu esse eiusmod nostrud non eu. Eu sint laboris excepteur proident occaecat elit adipisicing anim proident ex do velit.'),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    _checkBox(),
                    Text(
                        'He leído y acepto las políticas de privacidad del sitio')
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _checkBox() {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(
          () {
            isChecked = value!;
          },
        );
      },
    );
  }
}
