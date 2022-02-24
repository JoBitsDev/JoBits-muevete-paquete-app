import 'package:flutter/material.dart';
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
          AssetImages(),
        ],
      ),
      drawer: const DrawerMenu(),
      body: HomeTop(),
    );
  }
}
