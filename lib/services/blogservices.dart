import 'dart:convert';

import 'package:http/http.dart' as http;
class BlogApiService {
  Future<dynamic>sendData(String Name,String Age,String mobileno,String address,String pincode,String email,String password)
  async{
    var client=http.Client();
    var url=Uri.parse("http://172.16.185.156:3012/api/blog/add");
    var response=await client.post(url,
        headers:<String,String>
        {
          "Content-Type":"application/json; charset=UTF-8"
        },
        body: jsonEncode(

            {
              "Name":Name,
              "age":Age,
              "mobileno":mobileno,
              "address":address,
              "pincode":pincode,
              "Emailid":email,
              "password":password

            }
        )
    );
    if(response.statusCode==200)
    {
      return json.decode(response.body);
    }
    else
    {
      throw Exception("Failed to send data...");
    }
  }
}
