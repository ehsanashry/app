import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/View/Screen/elementScreen.dart';
import 'package:food_app/View/Screen/feedBackScreen.dart';
import 'package:food_app/layout/navigation.dart';
import 'package:food_app/services/meals/pages/HomeScreen.dart';
import 'package:food_app/cubit/cubit_observer.dart';
import 'package:food_app/services/auth/pages/login.dart';
import 'package:food_app/services/auth/pages/signup.dart';
import 'package:food_app/services/splash/splashScreen.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      // home: NavigationScreen(),
    );
  }
}
