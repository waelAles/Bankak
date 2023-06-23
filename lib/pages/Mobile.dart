import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/Account.dart';

enum w {Account ,Mobile }
w? _w = w.Mobile;

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  bool? isChecked = false;
  bool isButtonActive = true;
  late TextEditingController controller;
  @override
  void initState(){
    super.initState();

    controller = TextEditingController();
    controller.addListener(() {
      final isButtonActive = controller.text.isNotEmpty;
      setState(()=> this.isButtonActive = isButtonActive);
    });
  }
  @override 
  void dispose(){
    controller.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Account()));
                   }
                   );
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
                     _w = val;
                       
                    }
                    );
                  },
                    ),
               ),
                  
              ],
              ),
              
              SizedBox(height: 30,),
              
              Divider(
                
                height: 20,
                color: Colors.grey[800],
              ),
              
              TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter your Mobile Number',
                            fillColor: Colors.white,
                            filled: true,
                           // prefixIcon: Padding(padding: EdgeInsets.)
                           suffixIcon: Icon(Icons.phone_android),
                          ),
                          controller: controller,
                          validator: (val) {
                            return val!.isEmpty ? "Please Enter Your Number" : null;
                          },
                          onChanged: (val) {
                            setState(() {});
                          },
                          
                        ),
                        SizedBox(height: 30,),
              
                        Card(
                          child: Row(
                            children: [
                              
                              Transform.scale(
                                scale: 2,
                                child: Checkbox(value: isChecked ,
                                focusColor: Colors.lightBlue,
                                activeColor: Colors.red,
                                
                                 onChanged: ((bool? val){
                                  setState(() {
                                    isChecked = val; 
                                  });
                                 }
                                 ),
                                ),
                              ),
                              Text(
                                'I Agree To The Terms And Conditions',
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              Divider(
                                height: 20,
                                color: Colors.grey[800],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                      
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            
                            ElevatedButton(onPressed: isChecked! && isButtonActive ? (){} : null ,

                            style: ElevatedButton.styleFrom(
                              primary: Colors.red[600],
                                minimumSize:const Size(20, 60),
                            ),
                             child: Text(
                              'Submit',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                             ), 
                             ),

                             ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                              primary: Colors.red[600],
                              minimumSize: Size(20, 60)
                            ),
                             child: Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                             ), 
                             ),
                          ],
                        ),
                      
                              SizedBox(height: 30,),
            ],
            ),
          ),
        ]
      ),
    );
  }
}