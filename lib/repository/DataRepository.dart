


import 'package:test_app/Model/Book.dart';
import 'package:test_app/repository/DataClient.dart';

class DataRepository{

    DataRepository._();
  static DataRepository dataRepository = DataRepository._();


List<Data> books;
 

  Future<List<Data>> convertJsonToBook() async {
   Map<String, dynamic> map  = await DataClient.dataClient.getAllBook();
   Book bookItem = Book.fromJson(map);
  
    if(bookItem.data!=null){
       books=bookItem.data;
       }
   
    
    return books;
   
 
   
  }



  

}