import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:muevete_paquete/constants/style.dart';
import 'package:muevete_paquete/widgets/widget.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            padding: EdgeInsets.all(1),
            child: Image.asset("assets/images/logoMuevetePaquete.jpeg",
                fit: BoxFit.cover),
          )
        ],
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
