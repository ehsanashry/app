import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/cubit/state.dart';
import 'package:food_app/services/meals/models/cart.dart';
import 'package:food_app/shared/components.dart';

class MealCubit extends Cubit<AppStates> {
  MealCubit() : super(AppInitialState());

  String id = FirebaseAuth.instance.currentUser!.uid;

  void addToCart(CartModel cartModel, String title,
      dynamic price, String? mealphot,  String? rate,bool edit) async {
    FirebaseFirestore.instance
        .collection('v')
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .collection('mycarts')
        .add(cartModel.toJson())
        .then((value) {
      if (!edit) {
        showToast(message: 'Added Successfully', state: ToastState.SUCCESS);
      } else {
        showToast(message: 'Edited Successfully', state: ToastState.SUCCESS);
      }
    }).catchError((onError) {
      showToast(message: onError.toString(), state: ToastState.ERROR);
    });
    emit(AddtoCartState());
  }

 Stream<QuerySnapshot> getproductsAddedToFireStore() async* {
    yield* FirebaseFirestore.instance
        .collection('v')
        .doc(id)
        .collection('mycarts')
        .snapshots();
  }
  int quantity = 0;
  get _quantity => quantity;
  int doc1 = 0;
  int doc2 = 0;
  get _doc2 => doc2;
  List<int> quantities = [];
  List<double> prices = [];
  // quantitiessExtract() {
  //   FirebaseFirestore.instance
  //       .collection('v')
  //       .doc(id)
  //       .collection('mycarts')
  //       .get()
  //       .then((QuerySnapshot querySnapshot) {
  //     querySnapshot.docs.forEach((doc) {
  //       quantities.add(doc["products"]["quantity"]);
  //     });
  //     print(quantities);
  //     return quantities;
  //   });

  //   notifyListeners();
  // }

  // priceExtract() {
  //   FirebaseFirestore.instance
  //       .collection('v')
  //       .doc(id)
  //       .collection('mycarts')
  //       .get()
  //       .then((QuerySnapshot querySnapshot) {
  //     querySnapshot.docs.forEach((doc) {
  //       double q = double.parse(doc["price"]);
  //       prices.add(q);
  //     });
  //     print(prices);
  //     return quantities;
  //   });

  //   notifyListeners();
  // }

  // double totalprice = 0.0;
  // calculateTotalPrice() {
  //   var quantitttttttttttt = quantitiessExtract();
  //   var pricccccccccccccc = priceExtract();
  //   for (int i = 0; i < quantitttttttttttt.length; i++) {
  //     totalprice += quantitttttttttttt[i] + pricccccccccccccc[i];
  //     print('total price ${totalprice.toStringAsFixed(2)}');
  //   }
  //   notifyListeners();
  // }
}
