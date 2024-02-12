import 'package:blogfrontend/services/blogservices.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name=new TextEditingController();
  TextEditingController age=new TextEditingController();
  TextEditingController mobileno=new TextEditingController();
  TextEditingController address=new TextEditingController();
  TextEditingController pincode=new TextEditingController();
  TextEditingController emailid=new TextEditingController();
  TextEditingController password=new TextEditingController();
  void RegisterValueAdd()
  {
    print("Name"+name.text);
    print("Age"+age.text);
    print("MobileNo"+mobileno.text);
    print("Address"+address.text);
    print("Pincode"+pincode.text);
    print("Emailid"+emailid.text);
    print("Password"+password.text);
    final response=BlogApiService().sendData(name.text, age.text, mobileno.text, address.text, pincode.text, emailid.text, password.text);
    // if(response['status']=="success")
    // {
    //   print("Successfully Added");
    // }
    // else{
    //   print("Error");
    // }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Here")
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: age,
                decoration: InputDecoration(
                    labelText: "Age",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: mobileno,
                decoration: InputDecoration(
                    labelText: "moblieNo",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: address,
                decoration: InputDecoration(
                    labelText: "Address",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: pincode,
                decoration: InputDecoration(
                    labelText: "pincode",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: emailid,
                decoration: InputDecoration(
                    labelText: "Emailid",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: password,
                decoration: InputDecoration(
                    labelText: "password",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent,foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          )),
                      onPressed: RegisterValueAdd, child: Text("Register"))),
            ],
          ),
        ),
      ),
    );
  }
}
