import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/constants/style.dart';
import 'package:muevete_paquete/core/users/ui/login/framework/login.dart';
import 'package:muevete_paquete/widgets/widget.dart';

class ElementsBody extends StatelessWidget {
  String itemName;

  VoidCallback onTap;

  ElementsBody(this.itemName, this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.height * 0.2),
        SizedBox(
          width: MediaQuery.of(context).size.width / 0.2,
          height: MediaQuery.of(context).size.height * 0.4,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color: Color(0xFF00B0FF),
                          blurRadius: 1.0,
                          offset: Offset(0.0, 1.0),
                          spreadRadius: 1.0)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 3.0),
                      child: CustomText(
                        color: Color(0xFF00B0FF),
                        size: 38,
                        text: 'La Solución a tus Envíos ',
                        weight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(
                        'Dolor deserunt culpa nostrud et veniam \n anim aliquip irure excepteur',
                        style: TextStyle(fontSize: 15.0, color: lightGrey),
                      ),
                    ),
                    SizedBox(height: 30.0),
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
              ),
              Spacer(),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(right: 12),
                  margin: EdgeInsets.only(left: 1.0),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 9,
                  child: Image.asset("assets/images/logistics_x4dc.png",
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
