import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:get/get.dart';
import 'package:muevete_paquete/constants/assest_path.dart';
import 'package:muevete_paquete/widgets/widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10.0,
        actions: const <Widget>[
          Center(
            child: AssetImages(),
          ),
        ],
        title: logoApp(),
      ),
      drawer: const DrawerMenu(),
      body: FooterView(
        footer: Footer(
          child: CreateFooter(),
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 40.0),
                  Text(
                    'Operaciones',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ],
          ),
          // MaterialButton(
          //   padding: EdgeInsets.all(50),
          //   child: Container(
          //     child: const Text('Enviar Paquete'),
          //   ),
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(5.0)),
          //   elevation: 0.0,
          //   color: Colors.blue,
          //   textColor: Colors.white,
          //   onPressed: () {
          //     Get.to(LoginForm());
          //   },
          // ),
          // SizedBox(height: 40.0),
          // MaterialButton(
          //   padding: EdgeInsets.all(50),
          //   child: Container(
          //     child: const Text('LLevar Paquete'),
          //   ),
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(5.0)),
          //   elevation: 0.0,
          //   color: Colors.blue,
          //   textColor: Colors.white,
          //   onPressed: () {
          //     Get.to(LoginForm());
          //   },
          // ),
        ],
      ),
      floatingActionButton: const WhatsappButton(),
    );
  }
}
