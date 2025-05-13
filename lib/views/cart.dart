import 'package:app_meuble/Providers/hello_provider.dart';
import 'package:app_meuble/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HelloProvider>(context);
    final item = provider.chair;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(
            color: blackColor,
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SizedBox(
                  height: size.height,
                  child: ListView.builder(
                    itemCount: item.length,
                    itemBuilder: (BuildContext contex, index) {
                      final chaise = item[index];
                      return Column(
                        children: [Text(chaise.name), Text('${chaise.price}')],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: DraggableScrollableSheet(
              initialChildSize: 1.0,
              minChildSize: 0.75,
              maxChildSize: 1.0,
              builder: (context, ScrollController) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: blackColor),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: SingleChildScrollView(controller: ScrollController),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
