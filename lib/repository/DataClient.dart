import 'dart:async';
import 'dart:convert';

import 'dart:io';




import 'package:http/http.dart' as http;






class DataClient{
  
 

    DataClient._();
  static DataClient dataClient = DataClient._();
  http.Client client= http.Client();

  initClient() {
    if (client == null) {
      client = http.Client();
      return client;
    } else {
      return client;
    }
  }


 


   Future<Map<String, dynamic>> getAllBook() async {
     
   
    try {
      client = initClient();
      
var headers = {  "Content-Type" : "application/json" };
     
      http.Response response = await client.get('https://talmihat.alkmal.com/api/v1/books', headers :headers);
      
        Map<String, dynamic> map ;
        
      
  
      if(response.statusCode==200){
      String responseBody = response.body;
    
     
      map = json.decode(responseBody) as Map;
      }

      return map;
  } on TimeoutException catch (e) {
  print('Timeout Error: $e');
} on SocketException catch (e) {
  print('Socket Error: $e');
} on Error catch (e) {
  print('General Error: $e');
}on HttpException catch(e){
    print('HttpException Error: $e');
}


on Exception catch(e){
    print('Exception Error: $e');
}    throw Exception('We were not able to successfully download the json data.');



 }



}

  









 
 

