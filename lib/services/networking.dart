

import 'package:http/http.dart' as http;
import 'dart:convert';
class NetworkHelper {
  NetworkHelper({this.url});
  final String url ;


  Future getData () async{


      http.Response responce = await http.get(url );
      if(responce.statusCode == 200) {
        String data = responce.body;
        print (responce.statusCode);
         return jsonDecode(data);

      }else{
        print (responce.statusCode);
      }
  }
}