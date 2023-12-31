import 'package:flutter/material.dart';
import 'package:food_app/View/Screen/feedBackScreen.dart';
import 'package:food_app/View/Screen/search_field.dart';
import 'package:food_app/services/splash/splashScreen.dart';

List<String> images = [
  'images/avocado.jpg', 'images/avocado.jpg', 'images/avocado.jpg',
  'images/avocado.jpg', 'images/avocado.jpg', 'images/avocado.jpg',
  'images/avocado.jpg', 'images/avocado.jpg', 'images/avocado.jpg',
];

List<String> titles = [
  'vegeration pizza', 'margerita pizza', 'smoked salami pizza',
  'hotdog pizza', 'chicken pizza', 'pepperoni pizza',
  '4 season pizza', 'italian pizza', 'shrimp pizza',
];

List<String> prices = [
  '60 LE', '65 LE', '90 LE',
  '90 LE', '85 LE', '55 LE',
  '70 LE', '75 LE', '80 LE',
];


void main() => runApp(const PizzaMeals());
class PizzaMeals extends StatelessWidget {
  const PizzaMeals ({Key? key}) : super(key: key);
static String id="PizzaMeals";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF6E1E1),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF6E1E1),
          elevation: 0,
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
            onPressed: () {  },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: () {  },
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SearchField(),
              const SizedBox(height: 25,),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(10),
                  children: List.generate(9, (index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 15,left: 15),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Center(
                              child: Image.asset(images[index]),
                            ),
                          ),
                          Text(
                            titles[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                prices[index],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Icon(Icons.favorite, color: Colors.orangeAccent,),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){Navigator.pushNamed(context,SplashScreen.id);}, icon: const Icon(Icons.home_outlined,color: Colors.white,)),
              IconButton(onPressed: (){Navigator.pushNamed(context,FeedBackScreen.id);}, icon: const Icon(Icons.person_outline_rounded,color: Colors.white,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline_rounded,color: Colors.white,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_outlined,color: Colors.white,)),
            ],
          ),
        ),
      ),
    );
  }
}