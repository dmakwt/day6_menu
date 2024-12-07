import 'package:flutter/material.dart';
import 'package:flutter_application_6_menu/models/meal.dart';
import 'package:flutter_application_6_menu/screens/meal_details_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Meal> meals = [
    Meal(
      imgUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnxzbItiQjzkSg0nFDUCnbuScveF9cEbrHGA&s",
      name: "Burger",
    ),
    Meal(
      name: 'Pizza',
      imgUrl:
          'https://i.ibb.co/MCqMjSj/png-clipart-california-style-pizza-sicilian-pizza-chrono-pizza-fast-food-pizza-menu-food-recipe-1-re.png',
    ),
    Meal(
      name: 'Suchi',
      imgUrl:
          'https://i.ibb.co/0D2gP6T/2cd43b-e5828aa119524592ab00126dfa48a944-mv2-removebg-preview.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Menu",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MealDetailsScreen(
                          meal: meals[index],
                        )),
              );
            },
            child: Row(
              children: [
                Image.network(
                  meals[index].imgUrl,
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    meals[index].name,
                    style: TextStyle(fontSize: 34),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
