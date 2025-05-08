import 'package:app_meuble/Components/app_builder.dart';
import 'package:app_meuble/Components/drawer_custom.dart';
import 'package:app_meuble/core/utils/colors.dart';
import 'package:app_meuble/models/chair.dart';
import 'package:app_meuble/views/cart.dart';
import 'package:app_meuble/views/detail_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: appBuilder(),
      drawer: DrawerCustom(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: whiteColor,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cart()),
                      );
                    },
                    child: Icon(Icons.shopping_cart_outlined, size: 30),
                  ),
                ],
              ),
              SizedBox(height: 30),

              Text(
                'Explore',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 350,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 25),
                  scrollDirection: Axis.horizontal,
                  itemCount: chair.length,
                  itemBuilder: (context, index) {
                    final chaise = chair[index];
                    return Container(
                      width: 230,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: whiteColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => DetailPage(
                                            chaire: Chair(
                                              imageUrl: chaise['imageUrl'],
                                              tag: chaise['tag'],
                                              name: chaise['name'],
                                              description:
                                                  chaise['description'],
                                              price: chaise['Price'],
                                            ),
                                          ),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 180,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Hero(
                                      tag: chaise['tag'],
                                      child: Image.asset(
                                        fit: BoxFit.cover,
                                        chaise['imageUrl'],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Positioned(
                                top: 8,
                                right: 8,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: redColor,
                                  ),
                                  child: Icon(
                                    size: 20,
                                    Icons.favorite,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            chaise['name'],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                          Text(
                            chaise['description'],
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[500],
                            ),
                          ),
                          SizedBox(height: 40),
                          Row(
                            children: [
                              Text(
                                '\$${chaise['Price']}',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor,
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kPrimaryColor,
                                ),
                                child: Icon(Icons.add, color: whiteColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Best Selling',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(8),
                      width: 300,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              chair[index]['imageUrl'],
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                          ),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Minimal Chair',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor,
                                ),
                              ),
                              Text(
                                'Lorem ipsum',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[500],
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$${chair[index]['Price']}',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 20),
                  itemCount: chair.length,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
