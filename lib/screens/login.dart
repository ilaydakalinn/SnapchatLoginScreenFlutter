import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({ Key? key });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                'Giriş Yap',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 295,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'KULLANICI ADI VEYA EMAİL',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),//tıklandığında gri olmasını sağladım
                      )
                  ),
                ),
              ),
              Container(
                width: 295,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'ŞİFRE',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              TextButton(
                onPressed: (){},
                child: Text('Şifremi unuttum ?'),
              ),
              SizedBox(
                height: 40,
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
