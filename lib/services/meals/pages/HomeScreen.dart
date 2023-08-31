import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/View/Screen/elementScreen.dart';
import 'package:food_app/cubit/cubit.dart';
import 'package:food_app/services/meals/bloc/meal.dart';
import 'package:food_app/services/meals/models/meals.dart';
import 'package:food_app/services/meals/pages/mealdetails.dart';

class HomeScreen extends StatefulWidget {
  static String id = "FirstScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(66, 98, 94, 1),
        leading: GestureDetector(
          child: Icon(Icons.menu),
        ),
        actions: [
          GestureDetector(
            child: Icon(
              Icons.search,
              size: 25,
            ),
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      width: 46,
                      height: 50,
                      child: Image.asset(
                        'images/persona.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Container(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
//                    physics: ,
                    itemCount: GenerateNewProduct.length,

                    itemBuilder: (context, index) => _bulidNewProduct(
                      context,
                      GenerateNewProduct[index],
                    ),
                  ),
                ),
              ),
            ],
          ),
//
        ),
      ),
    );
  }

  Widget _bulidNewProduct(BuildContext context, Meal mealItem) {
    final String img;

//    final Function press;
    return InkWell(
      onTap: () {
                Navigator.pushReplacement(
                    (context),
                    MaterialPageRoute(
                        builder: (context) => BlocProvider(
                              create: (conntext) => MealCubit(),
                              child: ProductDetailsScreen(mealItem),
                            )
                            ));
              },
      // onTap: () {
        
      //   BlocProvider(create: create,
        
      //   );
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => ProductDetailsScreen(mealItem),
      //     ),
      //   );
      // },
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 150,
              height: 150,

//                     width: double.infinity,
//                     height: double.infinity,
              decoration: BoxDecoration(
//                         color: Color(0xff839793),
                color: Colors.transparent,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('${mealItem.mealphot}')),
              ),
            ),
            Text(
              '${mealItem.title}',
              style: TextStyle(
                  color: Color.fromRGBO(66, 98, 100, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '${mealItem.price}',
              style: TextStyle(
                  color: Color.fromRGBO(66, 98, 100, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color.fromRGBO(66, 98, 100, 1),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${mealItem.rate}',
                  style: TextStyle(
                      color: Color.fromRGBO(66, 98, 100, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
