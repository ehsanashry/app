import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/View/Screen/feedBackScreen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);
static String id="HomeAppBar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 181, 181, 0.9647058823529412),
      body: Stack(
      children: [
        Container(
          color: Color.fromRGBO(234, 168, 168, 0.9647058823529412),
          padding: EdgeInsets.all(25),
          child:Row (children: const [
            Icon(Icons.sort,size: 30,
                //color: Color(0xFF4C53A),
                color:Colors.black
            ),
            Padding(padding: EdgeInsets.only(left:20, ),child:Text("Price",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),
            ),
            Spacer(),
          ],
          ),
        ),
        ListView(
          children: [
            Column(
              children: [
                HomeAppBar(),
                //for (int i=0 ;i<3;i++)
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    height: 140,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Radio(
                          value: "",
                          groupValue: "",
                          activeColor: Colors.black,
                          onChanged: (index) {},
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(

                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1550317138-10000687a72b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aGFtYnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                ),
                                //   image1 :NetworkImage("https://media.istockphoto.com/id/1320901030/photo/freshly-cooked-and-sliced-pepperoni-pizza-whole.jpg?s=612x612&w=0&k=20&c=Ziisk_MedfCRHzvLAiIs21h2CkmQ5hu7BFgyd8HSJyA="),

                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 47, horizontal: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "90 LE",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 79),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Container(
                    height: 140,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Radio(
                          value: "",
                          groupValue: "",
                          activeColor: Colors.black,
                          onChanged: (index) {},
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(

                                image: NetworkImage(
                                  "https://media.istockphoto.com/id/1320901030/photo/freshly-cooked-and-sliced-pepperoni-pizza-whole.jpg?s=612x612&w=0&k=20&c=Ziisk_MedfCRHzvLAiIs21h2CkmQ5hu7BFgyd8HSJyA=",
                                ),

                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 47, horizontal: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "70 LE",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 79),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 400),
                  child: Container(
                    height: 140,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Radio(
                          value: "",
                          groupValue: "",
                          activeColor: Colors.black,
                          onChanged: (index) {},
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(

                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1551183053-bf91a1d81141?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=932&q=80",
                                ),

                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 47, horizontal: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "50 LE",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 79),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 580,left: 30),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total : ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40,left: 10),
                      child: InkWell(onTap: (){Navigator.pushNamed(context,FeedBackScreen.id);},
                        child: Container(
                          width: 300,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20),

                            ),

                            child:
                            Text("250 LE",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        )
      ],
    ),

    );
  }
}