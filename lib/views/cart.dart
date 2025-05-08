import 'package:app_meuble/Components/button_custom.dart';
import 'package:app_meuble/Components/detail_price.dart';
import 'package:app_meuble/core/utils/colors.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[100],
        elevation: 0,
        title: Text(
          'Cart',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: blackColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 150,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                fit: BoxFit.cover,
                                'assets/images/image1.jpg',
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                Text(
                                  'Wooden Chair',
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Text('data'),
                                    SizedBox(width: 50),
                                    Container(
                                      height: 40,
                                      padding: EdgeInsets.all(0),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.remove),
                                          ),
                                          Text('1'),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.add),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.6),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Column(
                  children: [
                    DetailPrice(itemText: 'Selected Items', price: '`200'),
                    SizedBox(height: 10),
                    DetailPrice(itemText: 'Shipping Fee', price: '`200'),
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 30),
                    DetailPrice(itemText: 'Subtotal', price: '200'),
                    Spacer(),
                    ButtonCustom(text: 'Checkout', onTap: () {}),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
