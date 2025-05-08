import 'package:app_meuble/core/utils/colors.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(Icons.menu, size: 30),
        );
      },
    ),
    actions: [
      Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(color: whiteColor, Icons.person),
      ),
      SizedBox(width: 10),
    ],
  );
}
