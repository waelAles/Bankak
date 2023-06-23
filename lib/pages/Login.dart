import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();

  String ?Email = '';
  String ?Password = '';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor:  Color.fromARGB(255, 222, 17, 17),
      //Color.fromARGB(255, 237, 16, 16),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children :[

        IconButton(
          //alignment: Alignment.topRight,
          icon: Icon(Icons.g_translate_rounded),
          onPressed: (){print("wael");},
        ),
        
            SizedBox(height: 120),

            Center(
              child:  Image.asset('image/t.jpg'),
              
            ),
            Container(
              
              padding: EdgeInsets.symmetric(vertical: 20.0 , horizontal: 400),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    SizedBox(height: 40),

                    TextFormField(
                      
                      decoration: InputDecoration(
                        hintText: 'Enter ID (CIF or 249-Mobile Number)',
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: Icon(Icons.person_pin)
                      ),
                      
                      validator: ( val) => val!.isEmpty ? 'Enter An Email' : null ,
                      onChanged: (val) {
                        setState(() => Email = val);
                      },
                    ),

                    SizedBox(height: 30),
                   
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        fillColor: Colors.white,
                        filled: true,
                         suffixIcon: Icon(Icons.visibility , size: 30,)
                      ),
                    obscureText: true,
                    validator: (val) => val!.length < 8 ? 'Enter Password +6 charcters ' : null,
                    onChanged: (val){
                        setState(() => Password = val);

                    }
                    ),
                    SizedBox(height: 30),

                    ElevatedButton(onPressed: ()async{
                    
                      Navigator.pushNamedAndRemoveUntil(context, '/h' , (route) => false);
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.red[600]),
                     child:Text(
                      'Login'

                     ),
                     ),

                     SizedBox(height: 20),

                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                      TextButton(onPressed: () {
                        Navigator.pushNamed(context, '/r');
                      }, 
                      child: Text(
                        'New Registration?',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                      ),
                      // SizedBox(width: 150.0),

                       TextButton(onPressed: () {}, 
                      child: Text(
                        "Can't Sign in?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                      ),
                     ],
                     )
                ],)
              ),
              color: Colors.white,
            ),
          ] 
        ),
        
      ),

    );
  }
}
