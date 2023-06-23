import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/Login.dart';
import 'package:flutter_application_2/pages/Mobile.dart';

enum w {Account ,Mobile, other}
w? _w = w.Account;
class Account extends StatefulWidget {
  const Account({super.key});


  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(90.0),
       child :AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () =>  Navigator.popAndPushNamed(context, '/l'),
        ),
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
          Card( 
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                 title: Text(w.Account.name,
                  style:TextStyle(
                    fontSize: 40,
                  ) ,
                  ),
                  value: w.Account, 
                groupValue: _w, 
                dense: true,
                onChanged: (value) {
                  setState(() {
                   _w = value;
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
                    // _w = val;
                    setState(() {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const Mobile()));
                    }
                    );
                  },
                         ),
               ),
                  
              ],
              ),
              SizedBox(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
        
                ElevatedButton(
                  
                  
                  onPressed: () {
                    
                  },
                  child:Text(
                    'Open New Account',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                    ), 
                    style: ElevatedButton.styleFrom(primary: Colors.red[800],
                    minimumSize: const Size(500, 70),
                    ),
                  ),
                 
               
                ],
                
              ),
                  SizedBox(height:  40,),
              
            ],
            ),
          ),
        ]
      ),
    );
  }
}