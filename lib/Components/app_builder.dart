import 'package:app_meuble/core/utils/colors.dart';
import 'package:flutter/material.dart';

AppBar appBuilder() {
  return AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.short_text_rounded, size: 30),
        );
      },
    ),
    actions: [
      Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(Icons.person, color: Colors.white),
      ),
      SizedBox(width: 10),
    ],
  );
}
