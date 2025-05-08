import 'package:app_meuble/Components/star_generate.dart';
import 'package:app_meuble/models/chair.dart';
import 'package:app_meuble/core/utils/colors.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.chaire});
  final Chair chaire;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _isTrue = true;
  void _changeColor() {
    setState(() {
      _isTrue = !_isTrue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
          widget.chaire.name,
        ),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SizedBox(
            height: 320,
            child: Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                  child: Hero(
                    tag: widget.chaire.tag,
                    child: Image.asset(
                      fit: BoxFit.cover,
                      widget.chaire.imageUrl,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.9, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        _changeColor();
                      },
                      icon: Icon(
                        color: _isTrue ? redColor : whiteColor,
                        Icons.favorite_border_outlined,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$${widget.chaire.price}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.pink[300],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Minimal Chair',
                      style: TextStyle(
                        fontSize: 18,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        StarGenerate(),
                        SizedBox(width: 5),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
