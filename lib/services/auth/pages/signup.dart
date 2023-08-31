import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/cubit.dart';
import 'package:food_app/cubit/state.dart';
import 'package:food_app/services/auth/pages/login.dart';
import 'package:food_app/shared/components.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var addressController = TextEditingController();
  var userNameController = TextEditingController();
  var phoneController = TextEditingController();
  var loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var bloc = context.read<AppCubit>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: loginKey,
            child: Column(children: [
              Text(
                "sign up : ...",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Color.fromRGBO(115, 1, 1, 10),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              defaultTextForm(
                  key: 'User Name ',
                  context: context,
                  type: TextInputType.text,
                  Controller: userNameController,
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 205, 165, 43),
                  ),
                  text: 'User Name',
                  validate: (val) {
                    if (val.toString().isEmpty) {
                      return 'Please Enter Your User Name';
                    }
                  },
                  onSubmitted: () {}),
              const SizedBox(
                width: 10,
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
                  key: 'phone',
                  context: context,
                  type: TextInputType.phone,
                  Controller: phoneController,
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 205, 165, 43),
                  ),
                  text: 'Phone Number',
                  validate: (val) {
                    if (val.toString().isEmpty) {
                      return 'Please Enter Your Phone';
                    }
                  },
                  onSubmitted: () {}),
              const SizedBox(
                height: 20,
              ),
              defaultTextForm(
                  key: 'Address',
                  context: context,
                  type: TextInputType.text,
                  Controller: addressController,
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 205, 165, 43),
                  ),
                  text: 'Address',
                  validate: (val) {
                    if (val.toString().isEmpty) {
                      return 'Please Enter Your Adderss';
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
                        child: Row(
                          children: [
                            Text(
                              "You have an account ?",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black87,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                    (context),
                                    MaterialPageRoute(
                                        builder: (context) => BlocProvider(
                                              create: (conntext) => AppCubit(),
                                              child: LogInScreen(),
                                            )));
                              },
                              child: Text('login'),
                            )
                          ],
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
                        cubit.signUp(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                            username: userNameController.text.trim().trim(),
                            address: addressController.text.trim(),
                            phone: phoneController.text.trim(),
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
