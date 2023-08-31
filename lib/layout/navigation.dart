import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:food_app/cubit/state.dart';


import '../cubit/cubit.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (BuildContext context, AppStates state) {},
          builder: (BuildContext context, AppStates state) {
            AppCubit cubit = AppCubit.get(context);
            return Scaffold(
              body: cubit.screens[cubit.currentIndex],
             
              bottomNavigationBar: CurvedNavigationBar(
                height: 50,
                items: const <Widget>[
                  Icon(CupertinoIcons.home, size: 30, color: Colors.white),
                  Icon(CupertinoIcons.bell, size: 30, color: Colors.white),
                  Icon(CupertinoIcons.chat_bubble_fill,
                      size: 30, color: Colors.white),
                  Icon(CupertinoIcons.person, size: 30, color: Colors.white),
                ],
                color: Colors.black,
                buttonBackgroundColor: Colors.white,
                backgroundColor: Colors.white,
                animationCurve: Curves.easeIn,
                animationDuration: const Duration(milliseconds: 400),
                onTap: (index) {
                  cubit.changeIndex(index);
                },
              ),
            );
          }),
    );
  }
}
