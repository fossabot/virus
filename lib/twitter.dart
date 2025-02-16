// twitter.dart
import 'package:flutter/material.dart';

class TwitterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Twitter"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/twitter.jpg', // Ensure this image is added to assets
              fit: BoxFit.cover, // Fills entire screen width and height
              width: double.infinity,
            ),
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text(
                "This is the Twitter page",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}