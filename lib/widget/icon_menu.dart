import 'dart:io';

import 'package:flutter/cupertino.dart';

class IconMenu extends StatelessWidget {
  final String title;
  final String icon;
  final String tag;
  final VoidCallback onPressed;

  const IconMenu({
    key,
    required this.icon,
    required this.title,
    this.tag = '',
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(_) => Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        child: Column(
          children: [
            Image.asset(
              icon,
              width: 45,
              height: 45,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 9),
            )
          ],
        ),
      );
}
