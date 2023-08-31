import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void navigateToWithoutReturn(context, Widget screen) =>
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => screen),
        (Route<dynamic> route) => false);
void navigateToWithReturn(context, Widget screen) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));

Widget defaultTextForm({
  required context,
  required TextEditingController Controller,
  Widget? suffixIcon,
  required Widget prefixIcon,
  required String text,
  required FormFieldValidator validate,
  bool obscure = false,
  required Function onSubmitted,
  Function(String?)? onChanged,
  required TextInputType type,
  required String key,
}) =>
    TextFormField(
      key: ValueKey(key),
      controller: Controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: text,
      ),
      validator: validate,
      obscureText: obscure,
      keyboardType: type,
      onFieldSubmitted: onSubmitted(),
      onChanged: onChanged,
    );
enum ToastState { SUCCESS, ERROR, WARNING }
Future<bool?> showToast({
  required String message,
  required ToastState state,
}) =>
    Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_LONG,
      timeInSecForIosWeb: 5,
      backgroundColor: chooseToastColor(state),
    );
Color chooseToastColor(ToastState state) {
  late Color color;
  switch (state) {
    case ToastState.SUCCESS:
      color = Colors.orange;
      break;
    case ToastState.ERROR:
      color = Color.fromARGB(255, 205, 165, 43);
      break;
    case ToastState.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}