import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/constants/style.dart';
import 'package:muevete_paquete/core/users/ui/login/framework/login.dart';
import 'package:muevete_paquete/widgets/widget.dart';

class ElementsBodyMobile extends StatelessWidget {
  String itemName;
  VoidCallback onTap;

  ElementsBodyMobile(this.itemName, this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                // height: MediaQuery.of(context).size.height * 0.3,
                padding: EdgeInsets.only(bottom: 3.0),
                child: CustomText(
                  color: Color(0xFF00B0FF),
                  size: 38,
                  text: 'La Solución a tus Envíos ',
                  weight: FontWeight.bold,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Dolor deserunt culpa nostrud et veniam \n anim aliquip irure excepteur',
                  style: TextStyle(fontSize: 15.0, color: lightGrey),
                ),
              ),
              SizedBox(height: 10.0),
              MaterialButton(
                child: Positioned(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 15.0),
                    child: const Text('Comenzar'),
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 0.0,
                color: Color(0xFF00B0FF),
                textColor: Colors.white,
                onPressed: () {
                  Get.to(Login(onTap, itemName));
                },
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 12),
            margin: EdgeInsets.only(left: 1.0),
            child: Image.asset("assets/images/logoMuevetePaquete.jpeg",
                fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
