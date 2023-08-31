import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/cubit.dart';
import 'package:food_app/layout/navigation.dart';
import 'package:food_app/services/auth/pages/signup.dart';

class SplashScreen extends StatelessWidget {
  static String id = "splashScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: 800,
          height: 790,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/avocado.jpg"), fit: BoxFit.fill),
          ),
          alignment: Alignment.topLeft,
          child: Container(
            height: 270,
            width: double.infinity,
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 50, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black, shape: BoxShape.rectangle),
                width: 600,
                height: 120,
                child: const Text(
                  'Are You\nHungry ?',
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 800,
            height: 300,
            decoration: BoxDecoration(
                color: Color.fromRGBO(139, 0, 0, 0),
                image: DecorationImage(
                    image: AssetImage(
                      "images/avocado.jpg",
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(400),
                    topRight: Radius.circular(400))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 647, left: 150),
          child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    (context),
                    MaterialPageRoute(
                        builder: (context) => BlocProvider(
                              create: (conntext) => AppCubit(),
                              child: SignUp(),
                            )
                            ));
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
