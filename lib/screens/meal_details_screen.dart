import 'package:flutter/material.dart';
import 'package:flutter_application_6_menu/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  MealDetailsScreen({super.key, required this.meal});

  Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          meal.name,
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              meal.imgUrl,
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Text("With cheese"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go Back"),
            )
          ],
        ),
      ),
    );
  }
}
