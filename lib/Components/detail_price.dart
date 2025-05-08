import 'package:flutter/material.dart';

class DetailPrice extends StatelessWidget {
  const DetailPrice({
    required this.itemText,
    required this.price,
    super.key,
  });

  final String itemText;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          itemText,
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 16
          ),
        ),
        Spacer(),
        Text(
          price,
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 14
          ),
        ),
      ],
    );
  }
}
