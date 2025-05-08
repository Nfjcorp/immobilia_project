import 'package:flutter/material.dart';

class StarGenerate extends StatefulWidget {
  const StarGenerate({super.key, });


  @override
  State<StarGenerate> createState() => _StarGenerateState();
}

class _StarGenerateState extends State<StarGenerate> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => IconButton(
          onPressed: () {},
          icon: Icon(color: Colors.transparent, size: 20, Icons.star),
        ),
      ),
    );
  }
}
