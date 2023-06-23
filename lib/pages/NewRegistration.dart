import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/Account.dart';
import 'package:flutter_application_2/pages/Mobile.dart';
enum w {Account ,Mobile }
w? _w = null;
class NewRegistration extends StatefulWidget {
  const NewRegistration({super.key});

  @override
  State<NewRegistration> createState() => _NewRegistrationState();
}

class _NewRegistrationState extends State<NewRegistration> {
  String ? Selectedoption;
    Widget showAccount() => Container(
      
    );
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(90.0),
       child :AppBar(
        toolbarHeight: 140,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 205, 20, 7),
        title: Image.asset('image/t.jpg',
        fit: BoxFit.scaleDown,
        height: 80,
        ),
        
      ),
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70,),

             // ElevatedButton(
               // onPressed: (){},
                //style: ElevatedButton.styleFrom( primary:Colors.white ,),
                // child : Text(
                 // '< Back',
                 // style: TextStyle(
                   // color: Colors.red,
                   // fontSize: 30,
                  //),
                //),
                //),
                 
              Text(
                'New User Registration',
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 35,
                ),
              ),
          ]),
          Divider(
            height: 50,
            color: Colors.grey[800],
          ),
          Divider(
            height: 40,
            color: Colors.grey[800],
          ),
          
          Row(
           // mainAxisAlignment: MainAxisAlignment.center,
          children :[

            
          Expanded(
            child: RadioListTile<w>(
              contentPadding: EdgeInsets.symmetric(vertical: 20 , horizontal: 60),
              title:  Text(w.Account.name,
              style:TextStyle(
                    fontSize: 40,
                  ) ,
              ),
              value: w.Account, 
            groupValue: _w, 
            dense: true,
            onChanged: (value) {
              setState(() {
                Navigator.pushNamedAndRemoveUntil(context,'/a' , (route) => false);
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const Account()));
              // _w = value;
              });
            },
            ),
          ),

           Expanded(
             child: RadioListTile<w>(
              contentPadding: EdgeInsets.symmetric(vertical: 20 , horizontal: 60),
              title: Text(w.Mobile.name,
              style:TextStyle(
                    fontSize: 40,
                  ) ,
              ),
              value: w.Mobile, 
              groupValue: _w, 
              dense: true,
              onChanged: (val){
                setState(() {
                  Navigator.pushNamedAndRemoveUntil(context,'/m' , (route) => false);                
                   _w = val;
                  }
                );
              },
                     ),
           ),
              
          ],
          ),
            
          
        ]
      ),
    );
  }
}