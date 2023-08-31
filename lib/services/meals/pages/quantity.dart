import 'dart:ui';

import 'package:flutter/material.dart';
class Quantity extends StatefulWidget {
  @override
  _QuantityState createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  int quantity=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text('Quantity',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),),
          SizedBox(width: 10,),
          Stack(
            children: [
              Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(143, 171, 162, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
               left: 4,
                top: 2,

                child: GestureDetector(
                  onTap: (){
                    setState(() {

                         quantity++;


                    });
                  },
                    child: Icon(Icons.add_circle,color: Color.fromRGBO(66, 98, 94, 1),size: 35,)),),
                Positioned(
                  left: 47,
                    top: 10,
                    child:Text('${quantity}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
              Positioned(
                right: 4,
                top: 2,

                child: GestureDetector(
                    onTap: (){
                      setState(() {
                        if(quantity>0) {
                          quantity--;
                        }
//                        else if(quantity<0)
//                        {
//                          quantity++;
//                        }
                      });
                    },
                    child: Icon(Icons.remove_circle,color: Color.fromRGBO(66, 98, 94, 1),size: 35,)),),
            ],
          )
        ],
      ),
    );
  }
}