import 'package:beklenenyasamsuresi/constants.dart';
import 'package:flutter/material.dart';

class IconCinsiyeti extends StatelessWidget {
  final String cinsiyet;
  final IconData? icon;
  IconCinsiyeti({required this.cinsiyet, this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
          color: Colors.black,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cinsiyet,
          style: kMetinStili,
        ),
      ],
    );
  }
}
