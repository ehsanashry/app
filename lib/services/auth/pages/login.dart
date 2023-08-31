import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/cubit.dart';
import 'package:food_app/cubit/state.dart';
import 'package:food_app/shared/components.dart';

class LogInScreen extends StatefulWidget {
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: loginKey,
            child: Column(children: [
              Text(
                "log in : ...",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Color.fromRGBO(115, 1, 1, 10),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              defaultTextForm(
                  key: 'email',
                  context: context,
                  type: TextInputType.emailAddress,
                  Controller: emailController,
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 205, 165, 43),
                  ),
                  text: 'Email',
                  validate: (val) {
                    if (val.toString().isEmpty) {
                      return 'Please Enter Your Email';
                    }
                    return null;
                  },
                  onSubmitted: () {}),
              const SizedBox(
                height: 10,
              ),
              defaultTextForm(
                  key: 'password',
                  context: context,
                  type: TextInputType.visiblePassword,
                  Controller: passwordController,
                  prefixIcon: const Icon(
                    Icons.key,
                    color: Color.fromARGB(255, 205, 165, 43),
                  ),
                  text: 'password',
                  validate: (val) {
                    if (val.toString().isEmpty) {
                      return 'Please Enter Your password';
                    }
                    return null;
                  },
                  onSubmitted: () {}),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(224, 182, 182, 1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, HomeScreen.id);
                    },
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "You dont have an account ? Sign up",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              BlocConsumer<AppCubit, AppStates>(
                listener: (BuildContext context, AppStates state) {},
                builder: (BuildContext context, AppStates state) {
                  AppCubit cubit = AppCubit.get(context);

                  return MaterialButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      if (loginKey.currentState!.validate()) {
                        cubit.LogIn(
                            email: emailController.text,
                            password: passwordController.text,
                            context: context);
                       
                      }
                      // Navigator.pushNamed(context, HomeScreen.id);
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('next'),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_right_alt,
                    size: 30,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
