import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bir kullanıcı adı seç",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Arkadaşların seni Snapchat'te kullanıcı \n               adınla ekleybilecek.",
                style: TextStyle(color: Colors.grey.shade600),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 295,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'KULLANICI ADI',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 90,
              ),
              SizedBox(
                height: 49,
                width: 215,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    'Giriş Yap',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
