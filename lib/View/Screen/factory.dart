// import 'package:flutter/material.dart';
// import 'package:food_app/DataBase/Meal.dart';
// import '../../DataBase/MealHelper.dart';
// import 'dart:async';
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Home(),

//     );

//   }}

// class Home extends StatefulWidget {
//   const Home({ Key? key }) : super(key: key);

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {

//   late String book_name;
//   late String book_author;
//   late String url;
//   late Dphelper help;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     help=Dphelper();
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Available Books',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//           ),

//         ),
//       ),

//       body: FutureBuilder(
//           future: help.allBooks() ,
//           builder:  (context, AsyncSnapshot snapshot)


//           {
//             if(!snapshot.hasData){
//               return CircularProgressIndicator();}

//             else{

//               return ListView.builder(
//                   itemCount: snapshot.data.length,

//                   itemBuilder: (context,index)
//                   {
//                     meal book_mine = meal.fromMap(snapshot.data[index]);
//                     return Container(
//                       height: 100,
//                       width: 100,
//                       child: ListTile(
//                         leading: Image(image: NetworkImage(url)),
//                         title: Text(book_mine.name,
//                             style: TextStyle(

//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,)

//                         ),
//                         subtitle: Text(book_mine.details,

//                           style: TextStyle(

//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,

//                           ),
//                         ),
//                         trailing: IconButton(
//                             onPressed: (

//                                 ) {
//                               if (book_mine.id!=null)
//                               {
//                                 help.delete(book_mine.id!);
//                               }
//                               setState(() {

//                               });
//                             },
//                             icon: Icon(Icons.delete,
//                               size: 30,
//                               color: Colors.red,

//                             ) ),






//                       ),
//                     );
//                   }


//               );


//             }}),




































//       floatingActionButton: FloatingActionButton (
//           child: Icon(Icons.add),
//           onPressed:(){
//             showModalBottomSheet(
//                 isScrollControlled: true,
//                 context: context,
//                 builder: (BuildContext context)  {
//                   return Padding(
//                     padding: MediaQuery.of(context).viewInsets,

//                     child: Padding(
//                       padding: EdgeInsets.all(20),
//                       child: Container(
//                         height: 400,
//                         child: Form(
//                           child: Padding(
//                             padding: EdgeInsets.all(20),
//                             child: Column(

//                                 children: [
//                                   TextFormField(
//                                     maxLines: null,
//                                     decoration: InputDecoration(
//                                       hintText: 'Book Name',
//                                       hintStyle: TextStyle(
//                                           fontWeight: FontWeight.bold
//                                       ),
//                                     ),

//                                     onChanged: (value)
//                                     {
//                                       book_name=value;
//                                     },

//                                     //   controller:textController

//                                   ),
//                                   TextFormField(
//                                     decoration: InputDecoration(
//                                         hintText: 'Book Author',
//                                         hintStyle: TextStyle(
//                                             fontWeight: FontWeight.bold
//                                         )
//                                     ),
//                                     onChanged: (value){
//                                       book_author= value;
//                                     },

//                                     // controller: datecontroller,

//                                   ),
//                                   TextFormField(
//                                     maxLines: null,
//                                     decoration: InputDecoration(

//                                         hintText: 'Book cover url',
//                                         hintStyle: TextStyle(
//                                             fontWeight: FontWeight.bold
//                                         )
//                                     ),
//                                     onChanged: (value){
//                                       url= value;
//                                     },),

//                                   ElevatedButton(
//                                       child: Text('save',
//                                         style: TextStyle(

//                                             color: Colors.blue
//                                         ),
//                                       ),
//                                       onPressed:()
//                                       async{

//                                         setState(() {

//                                           meal  mine = meal({'name':book_name,'author':book_author});

//                                           help.create_book(mine).then((value) =>  Navigator.of(context).pop());
//                                           // task_s.id=d;


//                                         });

//                                       }  )
//                                 ]

//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 }  );

//           }
//       ),

//     );







//   }
// }
