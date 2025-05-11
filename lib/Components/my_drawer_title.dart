import 'package:app_meuble/core/utils/colors.dart';
import 'package:flutter/material.dart';

class MyDrawerTitle extends StatelessWidget {
  const MyDrawerTitle({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  final Icon icon;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: ListTile(
        leading: icon,
        title: Text(text, style: TextStyle(color: blackColor)),
        onTap: onTap,
      ),
    );
  }
}
