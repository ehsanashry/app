import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({Key? key}) : super(key: key);
static String id="feedBackScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(
  children: [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromARGB(255, 252, 223, 223),
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20),
        child: Text("FeedBack",style: TextStyle(fontSize: 40,color: Color.fromRGBO(90, 161, 34, 1) ,
            fontWeight: FontWeight.w400,fontStyle: FontStyle.normal)),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 2,left: 250),
      child: Container(
        width: 70,
        height: 70,
        color: Color.fromARGB(255, 224, 182, 182).withAlpha(0),
          child: Image.asset("images/avocado.jpg",fit: BoxFit.fill,),
      ),
    ),
    Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 60,left: 50),
        child: Icon(Icons.messenger_outline_rounded,size: 400,color: Color.fromRGBO(90, 161, 34, 1)),
      ),
    ),
    Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 140,left: 130),
        child: Text("Hi...\nMy name is Emy,\nI'm very happy\nwith the food,\nIt tastes delicious.",
            style: TextStyle(fontSize: 30,color: Colors.black45 ,
            fontWeight: FontWeight.w200,fontStyle: FontStyle.normal)),
      ),
    ),
    Container(
      child: Padding(
        padding: const EdgeInsets.only(top:430,left: 20),
        child: Text("Messages",style: TextStyle(fontSize: 30,color: Colors.green ,
            fontWeight: FontWeight.w400,fontStyle: FontStyle.normal)),
      ),
    ),
Container(
  child: Padding(
    padding: const EdgeInsets.only(top: 435,left: 170),
    child: Icon(Icons.email_rounded,size:30,color: Colors.deepOrange,),
  ),
),
    Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 435,left: 300),
        child: Wrap(
          children: List<Widget>.generate(5, (int index) {
            return Icon(Icons.star_rate_rounded,size: 30,color: Colors.yellowAccent,);
          }),
      ),
    ),
    ),
    Container(
      child: Padding(
        padding: const EdgeInsets.only(top:490,left: 15),
        child: Text("follow us on :-",style: TextStyle(fontSize: 30,color: Colors.red ,
            fontWeight: FontWeight.w300,fontStyle: FontStyle.normal)),
      ),
    ),
        Padding(
          padding: const EdgeInsets.only(top: 500,left:25),
          child: Container(
            child: Image.asset("images/avocado.jpg",width: 240,height: 240,),
          ),
        ),
    Padding(
      padding: const EdgeInsets.only(top: 600,left: 320),
      child: InkWell(onTap: (){Navigator.pushNamed(context,'splashScreen');
      },
        child: Container(
          width: 130,
          height: 80,
          decoration: BoxDecoration(color: Color.fromRGBO(
              213, 245, 213, 1.0),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(50),border: Border.all(color: Colors.green,width: 5)),
          child: Padding(
            padding: const EdgeInsets.only(top: 15,left: 22),
            child: Text("Send",style: TextStyle(fontSize: 30,color: Colors.black ,
                fontWeight: FontWeight.bold,fontStyle: FontStyle.normal)),
          ),
        ),
      ),
    )
  ],
),
    );
  }
}
