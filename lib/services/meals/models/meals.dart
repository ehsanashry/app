class Meal {
  String? title;
  String? price;
  String? rate;
  String? mealphot;
  Meal({this.title, this.price, this.rate, this.mealphot});
}

List<Meal> GenerateNewProduct = [
  Meal(title: 'Burger1', price: '\$ 65', rate: '4.9', mealphot: 'images/burger1.jpg'),
  Meal(title: 'Burger2', price: '\$ 30', rate: '3.8', mealphot:'images/burger2.jpg' ),
  Meal(title: 'pizzaa1', price: '\$ 77', rate: '4.9',  mealphot:'images/pizzaa.jpg'),
  Meal(title: 'salad', price: '\$ 15', rate: '2.9', mealphot:'images/salada.jpg'),
];
