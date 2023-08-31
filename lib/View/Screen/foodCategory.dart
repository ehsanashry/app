import 'dart:js';

import 'package:flutter/material.dart';
import 'package:food_app/View/Screen/burger_meals.dart';
import 'package:food_app/View/Screen/pizza_meals.dart';
import 'package:food_app/services/splash/splashScreen.dart';

List images = [
  Image.asset(
    "images/avocado.jpg",
    fit: BoxFit.fill,
  ),
  Image.asset(
    "images/avocado.jpg",
    fit: BoxFit.fill,
  ),
  Image.asset(
    "images/avocado.jpg",
    fit: BoxFit.fill,
  ),
  Image.asset(
    "images/avocado.jpg",
    fit: BoxFit.fill,
  ),
  Image.asset(
    "images/avocado.jpg",
    fit: BoxFit.fill,
  )
];
List titels = ["Fries", "Pizza", "Burger", "Pasta", "Salad"];
List inks = [
  InkWell(
    onTap: () {},
  ),
  InkWell(
    onTap: () {
      Navigator.pushNamed(context as BuildContext, PizzaMeals.id);
    },
  ),
  InkWell(
    onTap: () {
      Navigator.pushNamed(context as BuildContext, BurgerMeals.id);
    },
  ),
  InkWell(
    onTap: () {
      // Navigator.pushNamed(context as BuildContext, HomeScreen.id);
    },
  ),
  InkWell(onTap: () {})
];

class FoodCategory extends StatelessWidget {
  const FoodCategory({Key? key}) : super(key: key);
  static String id = "FoodCategory";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),

      backgroundColor: Color.fromRGBO(225, 194, 194, 0.9568627450980393),
      // backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Find The food you want",
                    suffixIcon: Icon(
                      Icons.add_road_rounded,
                      color: Colors.grey,
                    ),
                    prefix: Icon(
                      Icons.search,
                      color: Colors.indigo,
                    ),
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 10),
            child: Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: titels.length,
                  itemBuilder: (context, index) {
                    return sectionCard(
                        icon: images[index],
                        titel: titels[index],
                        inks: inks[index]);
                  }),
            ),
          ),
          SizedBox(height: 14.0),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 10, left: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Popular Today",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //   SizedBox(height: 14.0),
          Padding(
            padding: const EdgeInsets.only(top: 310, left: 50),
            child: Container(
              height: 200,
              width: 400,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return topoffercard();
                },
                //   prototypeItem: const Text ("burger")
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 35),
        child: BottomAppBar(
          color: Color.fromRGBO(48, 13, 65, 1.0),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SplashScreen.id);
                  },
                  icon: const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, PizzaMeals.id);
                  },
                  icon: const Icon(
                    Icons.person_outline_rounded,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline_rounded,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget topoffercard() {
    return Card(
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("images/avocado.jpg"), fit: BoxFit.fill)),
          ),
        ],
      ),
    );
  }
}

class sectionCard extends StatelessWidget {
  const sectionCard({
    super.key,
    required this.icon,
    required this.titel,
    required this.inks,
  });

  final Image icon;
  final String titel;
  final InkWell inks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 3, right: 3),
              child: icon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 30),
            child: Text(
              titel,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
              left: 8,
            ),
            child: Container(height: 50, width: 50, child: inks),
          ),
        ],
      ),
    );
  }
}
