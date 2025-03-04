import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget _socialButton(IconData icon, Color color) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 4),
      ],
    ),
    child: Icon(icon, color: color, size: 30),
  );
}
class SignInIcon extends StatelessWidget {
  const SignInIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      height: 74,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _socialButton(FontAwesomeIcons.google, Colors.blue),
          _socialButton(FontAwesomeIcons.facebook, Colors.blue.shade900),
          _socialButton(FontAwesomeIcons.apple, Colors.black),
        ],
      ),
    );
  }
}