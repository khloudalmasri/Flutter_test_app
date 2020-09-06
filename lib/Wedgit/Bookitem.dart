

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Model/Book.dart';
import 'package:test_app/Screen/BookDeateals.dart';

class Bookitem extends StatefulWidget {
  final Data book;

 Bookitem({this.book});
  @override
  State<StatefulWidget> createState() {
    return itemState();
  }
}

class itemState extends State<Bookitem> { 
 
 
  @override
  Widget build(BuildContext context) {
  
 

        
    return Scaffold(
     
          
    body: InkWell(
       onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookDeateals(book: widget.book,
                
              ),
            ));
      },
          child: Container(
             color: Colors.blue,
        width: 200,
        height: 400,

      
        margin: EdgeInsets.all(5),
        
        child: Column(
         


          children: [
           Container(
           margin: EdgeInsets.all(5),
           width: double.infinity,
           height: 200,
           
           child: CachedNetworkImage(imageUrl:widget.book.link ,fit:BoxFit.cover ,)),
       SizedBox(height: 10,),
           Text(widget.book.title),
          SizedBox(height: 10,),
           RaisedButton(onPressed: null,child: Text('View',style: TextStyle(color: Colors.blue),), color: Colors.white,)
 ,SizedBox(height: 10,),
        ],),



        
      ),
    ));
    
  }
}
