import 'package:flutter/material.dart';

class NavbarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
          height: 50, width: 200, child: Image.asset("images/logo.png")),
    );
  }
}
