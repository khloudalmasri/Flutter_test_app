
import 'package:flutter/cupertino.dart';
import 'package:test_app/Model/Book.dart';
import 'package:test_app/repository/DataRepository.dart';



class UserProvider with ChangeNotifier {
 

 List<Data> databooks = [];
  


 
  

  Future<List<Data>>  getdataBooks() async {
    

 databooks = await DataRepository.dataRepository.convertJsonToBook();

 
 notifyListeners();
 
  }





 
}
