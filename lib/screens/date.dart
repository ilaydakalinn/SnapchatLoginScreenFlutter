import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snap/screens/username.dart';

class Date extends StatefulWidget {
  const Date({Key? key});

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Doğum tarihin ne zaman?",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                child: Container(
                  width: 295,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'GÜN',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'AY',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'YIL',
                          labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 49,
                        width: 215,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>UserName()));
                          },
                          child: Text(
                            'Devam Et',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
