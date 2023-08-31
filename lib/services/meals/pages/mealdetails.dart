import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/DataBase/Meal.dart';
import 'package:food_app/cubit/cubit.dart';
import 'package:food_app/cubit/state.dart';
import 'package:food_app/services/meals/bloc/meal.dart';
import 'package:food_app/services/meals/models/cart.dart';
import 'package:food_app/services/meals/models/meals.dart';
import 'package:food_app/services/meals/pages/HomeScreen.dart';
import 'package:food_app/services/meals/pages/quantity.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Meal meal;
  ProductDetailsScreen(this.meal);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List colors = [
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.blueGrey,
    Colors.grey[700],
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var bloc = context.read<MealCubit>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Meal Details',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 21),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: Icon(Icons.arrow_back, color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              child: Icon(Icons.shopping_bag, size: 25, color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
//                         color: Color(0xff839793),
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('${widget.meal.mealphot}'),
                        ))),
//                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15, left: 22, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${widget.meal.title}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      '${widget.meal.price}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15, left: 22, right: 22),
                child: Text(
                  'this can be changed this can be changed this can be changed this can be changed this can be changed this can be changed this can be changed this can be changed this can be changed this can be changed',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey[600]),
                ),
              ),
//              ListOfColors(),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 22, right: 22),
//               child: ColorPalatte(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 22, right: 22),
                child: Quantity(),
              ),
              //  BlocProvider(
              //                 create: (conntext) => AppCubit(),
              //                 child: SignUp(),
              //               )
              BlocConsumer<MealCubit, AppStates>(
               listener: (context, state) {
                 
               },
                
                builder: (context,AppStates state) {
                      var bloc = context.read<MealCubit>();

              
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 30, left: 45, right: 30, bottom: 30),
                    child: OutlinedButton(
                      onPressed: () {
                        CartModel cart = CartModel(
                          mealphot: widget.meal.mealphot,
              
                          rate: widget.meal.rate,
                          price: widget.meal.price,
                          title: widget.meal.title,
              
                          userId:
                              FirebaseAuth.instance.currentUser!.uid.toString(),
                          // products: Products(
                          //     productId: productsModel.id,
                          //     quantity: int.parse(quantityController.text),
                          //     )
                        );
                        bloc.addToCart(
                            cart,
                            widget.meal.title!,
                            widget.meal.price!,
                            widget.meal.mealphot!,
                            widget.meal.rate!,
                            true);
                        // Provider.of<HomeProvider>(context, listen: false)
                        //     .addToCart(cart, productsModel.id,productsModel.image.toString(),productsModel.title.toString(), productsModel.description.toString(),productsModel.price.toString(),productsModel.category.toString(), true);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 55, vertical: 13),
                        child: Text(
                          'Add To Card',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
