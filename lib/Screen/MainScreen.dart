

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/Model/Book.dart';
import 'package:test_app/Wedgit/Bookitem.dart';
import 'package:test_app/providers/user_provider.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> { 
  List<Data> list;
 
  @override
  Widget build(BuildContext context) {
  
 
  UserProvider userProvider = Provider.of<UserProvider>(context);
      userProvider.getdataBooks();
        
    return Scaffold(
          
     body: SingleChildScrollView(
            child: Expanded(
                          child: Container(
                width: double.infinity,
                
                
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  children: <Widget>[
                  
                 
                    Container(
                    
                      child: Consumer<UserProvider>(
                        builder: (BuildContext context,UserProvider value, Widget child) {
                          
                          List<Data> list = value.databooks;
                         
                       return list != null
                      ?  GridView.builder(
                          itemCount: list.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                        
                          physics: ScrollPhysics(),
                          itemBuilder: (context, index) {
                            Data item = list[index];
                           
                            return Bookitem(book: item, );
                          },
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio:0.5,
                          ),
                        ) : Center(child: Text('قائمة الكتب فارغة '));
                        },
                     
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
    );

         
  }
}