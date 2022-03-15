import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

import 'package:muevete_paquete/widgets/widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
        titleSpacing: 10.0,
        actions: const <Widget>[
          Center(
            child: CircleAvatarAppBar(),
          ),
        ],
        title: logoApp(),
      ),
      drawer: const DrawerMenu(),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey.shade200),
        child: FooterView(
          footer: Footer(
            child: CreateFooter(),
          ),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Builder(
                  builder: (BuildContext context) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        Text(
                          'Operaciones',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
            CardsServicesHorizontal(),
          ],
        ),
      ),
      floatingActionButton: const WhatsappButton(),
    );
  }
}
