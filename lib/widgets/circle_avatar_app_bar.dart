import 'package:flutter/material.dart';

class CircleAvatarAppBar extends StatelessWidget {
  const CircleAvatarAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 12.0),
      child: CircleAvatar(
        child: Text('US'),
        backgroundColor: Colors.white,
      ),
    );
  }
}
