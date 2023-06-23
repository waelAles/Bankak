



import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/Login.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState(){

    super.initState();
    _navigatetohome();
    
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 2000) , () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('wael',
          style: TextStyle(fontSize: 50 , 
          fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
    );
  }
}