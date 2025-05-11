import 'package:app_meuble/Components/my_drawer_title.dart';
import 'package:app_meuble/core/utils/colors.dart';
import 'package:app_meuble/views/home.dart';
import 'package:app_meuble/views/settings.dart';
import 'package:flutter/material.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/image1.jpg'),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Nom Prénom',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                    ),
                  ),
                ],
              ),
            ),
            MyDrawerTitle(
              icon: Icon(Icons.home),
              text: 'Home',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
            MyDrawerTitle(
              icon: Icon(Icons.settings),
              text: 'Settings',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: redColor,
                ),
                child: Row(
                  children: [
                    Icon(color: whiteColor, Icons.logout_outlined),
                    SizedBox(width: 8),
                    Text(
                      textAlign: TextAlign.center,
                      'Déconnexion',
                      style: TextStyle(
                        fontSize: 18,
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
