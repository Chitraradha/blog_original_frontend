import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  TextEditingController email=new TextEditingController();
  TextEditingController pass=new TextEditingController();
  void BolgValuePage()
  {
    print(email);
    print(pass);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bolg"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.indigoAccent,Colors.white])
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: "EmailID",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: pass,
              decoration: InputDecoration(
                  labelText: "Password",
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
                    onPressed: BlogValuePage, child: Text("log In"))),
            SizedBox(height: 20,),
            SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent,foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                        )),
                    onPressed: (){

                    }, child: Text("New user Click here")))
          ],
        ),
      ),
    );
  }
}
