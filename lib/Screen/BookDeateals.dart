

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Model/Book.dart';

class BookDeateals extends StatefulWidget {
  final Data book;

 BookDeateals({this.book});
  @override
  State<StatefulWidget> createState() {
    return BookDeatealsState();
  }
}

class BookDeatealsState extends State<BookDeateals> { 
 
 
  @override
  Widget build(BuildContext context) {
  
 

        
    return Scaffold(
        backgroundColor: Colors.white,   
    body: Container(
      margin: EdgeInsets.only(top: 100,left: 10,right: 10),
     
      child: Column(children: [
         Container(
           width: double.infinity,
           height: 200,
           child: CachedNetworkImage(memCacheHeight: 200, imageUrl:widget.book.link ,fit: BoxFit.cover,)),
         SizedBox(height: 10,),
         Text(widget.book.title,style: TextStyle(color: Colors.blue),),
             SizedBox(height: 10,),
           Text(widget.book.description),
        
      ],),



      
    ));
    
  }
}
