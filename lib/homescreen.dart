import 'dart:ui'; // Import this for BackdropFilter
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pizza.dart';
import 'vegatable.dart'; // Ensure this matches your file name
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
      drawer: Drawer(
        child: Column(
          children: [
            // Drawer Header with blurred image
            Container(
              height: 200,
              child: Stack(
                children: [
                  // Background image
                  Image.asset(
                    'assets/restaurant.jpg', // Ensure this image is added to your assets
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                  // Blur effect
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      color: Colors.black.withOpacity(0.5), // Semi-transparent background
                      height: 200,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'WOW Pizza Menu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.pizzaSlice), // Using FontAwesome icon for pizza
              title: Text('Pizzas'),
              onTap: () {
                // Navigate to Pizza Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PizzaScreen()),
                );
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.carrot), // Using FontAwesome icon for vegetables
              title: Text('Vegetables'),
              onTap: () {
                // Navigate to Vegetable Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VegetableScreen()), // Ensure this matches the correct screen
                );
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.hamburger), // Using FontAwesome icon for fries
              title: Text('Fries'),
              onTap: () {
                // Navigate to Fries Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FriesScreen()),
                );
              },
            ),
            // Add more ListTiles for other menu items if needed
          ],
        ),
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
                      MaterialPageRoute(builder: (context) => VegetableScreen()), // Ensure this matches the correct screen
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
