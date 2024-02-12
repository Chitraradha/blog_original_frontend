// To parse this JSON data, do
//
//     final blog = blogFromJson(jsonString);

import 'dart:convert';

List<Blog> blogFromJson(String str) => List<Blog>.from(json.decode(str).map((x) => Blog.fromJson(x)));

String blogToJson(List<Blog> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Blog {
  String id;
  String? name;
  String? age;
  String? mobileno;
  String? address;
  String? pincode;
  String emailid;
  String password;
  int v;

  Blog({
    required this.id,
    this.name,
    this.age,
    this.mobileno,
    this.address,
    this.pincode,
    required this.emailid,
    required this.password,
    required this.v,
  });

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
    id: json["_id"],
    name: json["Name"],
    age: json["age"],
    mobileno: json["mobileno"],
    address: json["address"],
    pincode: json["pincode"],
    emailid: json["Emailid"],
    password: json["password"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "Name": name,
    "age": age,
    "mobileno": mobileno,
    "address": address,
    "pincode": pincode,
    "Emailid": emailid,
    "password": password,
    "__v": v,
  };
}
