import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class CartModel {
  String? userId;
  String? title;
  String? price;
  String? rate;
  String? mealphot;
  
  CartModel({required this.userId, this.mealphot,required this.rate,this.price,this.title});
 
factory CartModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return CartModel(
      userId: data?['userId'],
      mealphot: data?['mealphot'],
      title: data?['title'],
      price: data?['price'],
      rate: data?['rate'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (userId != null) "userId": userId,
      if (mealphot != null) "mealphot": mealphot,
      if (title != null) "title": title,
      if (price != null) "price": price,
      if (rate != null) "rate": rate,
 

    };
  }
  CartModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    mealphot = json['mealphot'];
    title = json['title'];
    price = json['price'];
    rate = json['rate'];
   
  }


 
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['userId'] = userId;
    data['mealphot'] = mealphot;
    data['title'] = title;
    data['price'] = price;
    data['rate'] = rate;
    
  
    return data;
  }
}






