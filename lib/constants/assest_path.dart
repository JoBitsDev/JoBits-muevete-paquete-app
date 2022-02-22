//Although we have described the assets path in pubspec.yaml but to use that
// asset in an application we need to give there relative path in any widgets.
// If we add all the assets relative path in one file then it will be easy
// for us to get all the paths and update the p

import 'package:flutter/material.dart';
import 'package:muevete_paquete/widgets/widget.dart';

class AssetImages extends StatelessWidget {
  const AssetImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          IconNavBar(),
        ]);
  }
}
