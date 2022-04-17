import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:muevete_paquete/constants/style.dart';
import 'package:muevete_paquete/widgets/widget.dart';

AppBar topNavigationBarMobile(
        BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          key.currentState?.openDrawer();
        },
      ),
      elevation: 0,
      centerTitle: true,
      title: Row(
        children: [
          ElasticInLeft(
            delay: Duration(milliseconds: 1000),
            child: Visibility(
              child: CustomText(
                  text: "Muevete Paquete",
                  color: Color(0xFF00B0FF),
                  size: 20,
                  weight: FontWeight.bold),
            ),
          ),
          Spacer(),
          ElasticInRight(
            delay: Duration(milliseconds: 1000),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF00B0FF),
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(2),
                child: CircleAvatar(
                    backgroundColor: light,
                    child: Icon(Icons.person_outline, color: dark)),
              ),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: light,
    );
