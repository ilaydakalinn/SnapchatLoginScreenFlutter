import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'date.dart';
import 'login.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
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
                'Adın Ne ?',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 295,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'AD',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),//tıklandığında gri olmasını sağladım
                      ),
                  ),
                ),
              ),
              Container(
                width: 295,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'SOYAD',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Kaydol ve Kabul Et'e dokunarak,"),
                  SizedBox(width: 3),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Gizlilik Politikası'nı",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("okuduğunu ve"),
                      SizedBox(
                        width: 3,
                      ),
                      GestureDetector(
                        child: Text(
                          "Kullanım Şartları'nı",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text("Kabul ettiğini")
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("onaylıyorsun."),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 215,
                height: 49,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Date()));
                  },
                  child: Text(
                    'Kaydol ve Kabul Et',
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
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
