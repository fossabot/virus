// homescreen.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pizza.dart';
import 'vegatable.dart';
import 'fries.dart';
import 'facebook.dart';
import 'twitter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("WOW Pizza"),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TwitterScreen()),
              );
            },
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FacebookScreen()),
              );
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
                RoundedButton(
                  text: "Vegetable",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VegetableScreen()),
                    );
                  },
                ),
                RoundedButton(
                  text: "Cheese Pizza",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PizzaScreen()),
                    );
                  },
                ),
                RoundedButton(
                  text: "Fries",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FriesScreen()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/pizza.jpg', // Ensure this image is added to assets
              height: 200,
            ),
            SizedBox(height: 10),
            Text(
              "A delicious pizza with fresh ingredients, made just for you!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            Spacer(),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(8),
              child: Text(
                "This is the home screen",
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
  final VoidCallback onPressed;

  const RoundedButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}