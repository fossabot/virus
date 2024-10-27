// fries.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pizza.dart';
import 'pizza.dart';

class FriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(" Fries"),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(text: "Vegetable"),
                RoundedButton(text: "Cheese Pizza"),
                RoundedButton(text: "Fries"),
              ],
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/fries.png',
              height: 200,
            ),
            Spacer(),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(8),
              child: Text(
                "This is the fries screen",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
