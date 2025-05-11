import 'package:app_meuble/core/utils/colors.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 24
          ),
        ),
      ),
    );
  }
}
