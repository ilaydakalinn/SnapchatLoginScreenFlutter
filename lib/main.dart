import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snap/screens/login.dart';
import 'package:snap/screens/sign.dart';


void main(){
  runApp(MaterialApp(
    home: Snap(),
    debugShowCheckedModeBanner: false,
  ));
}

class Snap extends StatefulWidget {
  const Snap({ Key? key });

  @override
  State<Snap> createState() => _SnapState();
}

class _SnapState extends State<Snap> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFFC00),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/images/snap.png',height: 90, width: 90,),
              SizedBox(
                height: 350,
              ),
              SizedBox(
                height: 90,
                width: 550,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.redAccent)
                  ),
                  onPressed: () {
                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),);
                  },
                  child: Text(
                    'GİRİŞ YAP',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              SizedBox(
                height: 90,
                width: 550,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Sign()),);
                  },
                  child: Text(
                    'KAYIT OL',
                    style: TextStyle(fontSize: 23),
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
