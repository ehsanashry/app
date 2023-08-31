import 'package:flutter/material.dart';
import 'package:food_app/View/Screen/feedBackScreen.dart';
class ElementScreen extends StatelessWidget {
  const ElementScreen({Key? key}) : super(key: key);
static String id= "ElementScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromRGBO(224, 181, 181, 0.9647058823529412),
            alignment: Alignment.topLeft,
            child: Container(
                width:500,
                height:500,
                transformAlignment: Alignment.topRight,transform: Matrix4.rotationZ(2.6/4),
                decoration: BoxDecoration(color:Color.fromRGBO(
                    224, 182, 182, 0.9568627450980393),
                  image: DecorationImage(image: AssetImage("images/avocado.jpg",),fit: BoxFit.cover),
                    ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 340,left: 50),
            child: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(color: Colors.orange.withAlpha(180),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.only(top: 7,left: 4),
                child: Text("classic pasta",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),textAlign:TextAlign.center),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 347,left: 320),
            child: Container(
              width: 150,
              height: 30,
              color: Colors.white.withAlpha(0),
              child: Text("60 LE",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w700),textAlign:TextAlign.center),
            ),
          ),
              Padding(
                padding: const EdgeInsets.only(top: 450,left: 100),
                child: Container(
                  width: 30,
                  height: 30,
                  color: Colors.orange,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Icon(Icons.minimize_rounded,size: 30,color:Colors.white),
                      ),
                ),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 450,left: 330),
            child: Container(
              width: 30,
              height: 30,
              color: Colors.orange,
              alignment: Alignment.center,
              child: Icon(Icons.add,size: 30,color:Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450,left: 160),
            child: Container(
              width: 150,
              height: 30,
              color: Colors.white.withAlpha(0),
              child: Text("1",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w700),textAlign:TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 550,left:80),
            child: Container(
              width: 300,
              height: 60,
              color: Colors.white.withAlpha(0),
              child: Text("so yummy",style: TextStyle(fontSize: 20,color: Colors.black.withAlpha(100),fontWeight: FontWeight.w700),textAlign:TextAlign.center),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 536,left:150),
            child: Container(
              width: 300,
              height: 60,
              color: Colors.white.withAlpha(0),
              child: Icon(Icons.tag_faces_sharp,size: 30,color: Colors.black.withAlpha(100),)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 640,left:150),
            child: InkWell(onTap: (){Navigator.pushNamed(context,FeedBackScreen.id);
            },
              child: Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(color: Color.fromRGBO(236, 6, 6, 1.0),shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 7,left: 4),
                  child: Text("Add",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),textAlign:TextAlign.center),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
