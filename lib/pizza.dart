// pizza.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PizzaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange, // AppBar background color
        title: Text("Cheese Pizza"), // AppBar title
        actions: [
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.twitter,
              color: Colors.white,
            ),
            onPressed: () {
              // Twitter action
            },
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.facebook,
              color: Colors.white,
            ),
            onPressed: () {
              // Facebook action
            },
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
              'assets/chees.png',
              height: 200,
            ),
            Spacer(),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(8),
              child: Text(
                "This is the pizza screen",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;

  const RoundedButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        // Define button action if needed
      },
      child: Text(text),
    );
  }
}
