import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app/layout/chat.dart';
import 'package:food_app/layout/navigation.dart';
import 'package:food_app/layout/notification.dart';
import 'package:food_app/layout/profile.dart';
import 'package:food_app/services/meals/bloc/meal.dart';
import 'package:food_app/services/meals/pages/HomeScreen.dart';
import 'package:food_app/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/services/auth/models/user.dart';
import 'package:food_app/services/auth/pages/login.dart';
import 'package:food_app/services/order/pages/order.dart';
import 'package:food_app/shared/components.dart';
import '../services/auth/pages/login.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
 int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    NotivigationScreen(),
    ChatScreen(),
     BlocProvider(
      create: (conntext) => MealCubit(),
      child: GetCart(),
    ),
    
  ];
  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  UserProfile? userProfile;
  bool LoginLoadingStates = false;

  void signUp({
    required String email,
    required String password,
    required String username,
    required String address,
    required String phone,
    required context,
  }) {
    showToast(
        message: 'Create Account Loading ....', state: ToastState.WARNING);
    LoginLoadingStates = true;

    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) async {
      userProfile = UserProfile(
        address,
        email,
        username,
        password,
        phone,
      );
      storeDatabaseFirestore(value.user!.uid.toString())
          .then((value) {})
          .catchError((onError) {
        LoginLoadingStates = false;
        navigateToWithReturn(context, NavigationScreen());

        showToast(message: onError.toString(), state: ToastState.ERROR);
        emit(SignUpState());
      });
    }).catchError((onError) {
      LoginLoadingStates = false;
    });
    emit(SignUpState());
  }

  Future storeDatabaseFirestore(String id) async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .set(userProfile!.toJson());
  }

  void LogIn({
    required String email,
    required String password,
    required context,
  }) {
    print(email);
    print(password);
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      LoginLoadingStates = false;

      navigateToWithoutReturn(context, NavigationScreen());
    }).catchError((onError) {
      print(onError);
      LoginLoadingStates = false;

      showToast(message: onError.toString(), state: ToastState.ERROR);
    });
    emit(SignInState());
  }
}
