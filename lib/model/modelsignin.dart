// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
  String name;
  String age;
  String mobileno;
  String address;
  String pincode;
  String emailid;
  String password;

  Post({
    required this.name,
    required this.age,
    required this.mobileno,
    required this.address,
    required this.pincode,
    required this.emailid,
    required this.password,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    name: json["Name"],
    age: json["age"],
    mobileno: json["mobileno"],
    address: json["address"],
    pincode: json["pincode"],
    emailid: json["Emailid"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "Name": name,
    "age": age,
    "mobileno": mobileno,
    "address": address,
    "pincode": pincode,
    "Emailid": emailid,
    "password": password,
  };
}
