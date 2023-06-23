
import 'package:flutter/material.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
       child :AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.info,
            color: Colors.white,
            size: 40,
          ),
          onPressed: () {},
        ),
        toolbarHeight: 400,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 214, 32, 19),
        title: Image.asset('image/h.jpg',
        fit: BoxFit.scaleDown,
        height: 60,
        ),
        
        actions: [
          IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 40,
          ),
          onPressed: () {},
        ),
        ],
      ),
      ),
       body: Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.end,
      
      children: [
        
        AppBar(
          backgroundColor: Colors.grey[600],
          title: Text(
            'تحويل لحسابات بنك الخرطوم'
          ),
          centerTitle: true,
          actions: [
            
             ElevatedButton(
                   onPressed: (){
                    setState(() {
                     Navigator.pushNamedAndRemoveUntil(context, '/h' , (route) => false);          

                    });
                   },
                    style: ElevatedButton.styleFrom( primary:Colors.white ,
                    foregroundColor: Colors.red,
                    ),
                    child : Text(
                     'رجوع',
                     style: TextStyle(
                       color: Colors.red,
                       fontSize: 30,
                       fontWeight: FontWeight.bold,
                       
                      ),
                    ),
                    
                    ),
              //toolbarHeight: 50,
             
          ],
        ),
        AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'دفع مباشر',
            style: TextStyle(
              color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
      
        Card(
          child: Container(
            padding:EdgeInsets.symmetric(vertical: 20, horizontal: 200) ,
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          
                         
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black , ),
                          ),
                        ),
                        onChanged: (value) {
                          
                        },
                      ),
                    ),
                    SizedBox(width: 30,),
                    Text(
                      '0001 :',
                    ),
                    SizedBox(
                      width: 110,
                    ),

                    Text(
                      'رقم الحساب'
                    ),
                  ],
                ),
                SizedBox(height: 20,),

                   Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          
                         
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black , ),
                          ),
                        ),
                        onChanged: (value) {
                          
                        },
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      'Name :',
                    ),
                    SizedBox(
                      width: 150,
                    ),

                    Text(
                      'الإسم'
                    ),
                  ],
                ),

                SizedBox(height: 20,),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   Text(
                    'حساب توفير'
                    ),
                    // SizedBox(width: 30,),
                    Text(
                      ' :',
                    ),
                    SizedBox(
                      width: 112,
                    ),

                    Text(
                      'نوع الحساب'
                    ),
                  ],
                ),

                  SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          
                         
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black , ),
                          ),
                        ),
                        onChanged: (value) {
                          
                        },
                      ),
                    ),
                    SizedBox(width: 8,),
                    Text(
                      'الصناعية :',
                    ),
                    SizedBox(
                      width: 150,
                    ),

                    Text(
                      'الفرع'
                    ),
                  ],
                ),

               

              ],
            ),
          ),
        ),
        // SizedBox(height: 10,)
       // Divider(height: 20,
       // color: Colors.grey,
        //),
        Card(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(child: Icon(Icons.arrow_drop_down , size: 40,),),
                   
                    SizedBox(width: 590,),
                     SizedBox(
                      width: 400,
                      height: 50,
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          
                          hintText: 'إختر الحساب',
                          
                          
                         
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black , ),
                          ),
                        ),
                        onChanged: (value) {
                          
                        },
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text('001',
                    style: TextStyle(fontSize: 20),),
                ],
                
              ),

              Divider(height: 20, color: Colors.black,),

                 Row(
                children: [
                  SizedBox(child: Icon(Icons.phone_android , size: 40,),),
                   
                    SizedBox(width: 590,),
                     SizedBox(
                      width: 400,
                      height: 50,
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          
                          hintText: 'رقم الهاتف للرسالة النصية',
                          
                          
                         
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black , ),
                          ),
                        ),
                        onChanged: (value) {
                          
                        },
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text('249',
                    style: TextStyle(fontSize: 20),),
                ],
                
              ),

              Divider(height: 20, color: Colors.black,),

               Row(
                children: [
                  SizedBox(child: Icon(Icons.euro , size: 40,),),
                   
                    SizedBox(width: 590,),
                     SizedBox(
                      width: 400,
                      height: 50,
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          
                          hintText: 'أدخل المبلغ',
                          
                          
                         
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black , ),
                          ),
                        ),
                        onChanged: (value) {
                          
                        },
                      ),
                    ),
                    SizedBox(width: 10,),
                  
                ],
                
              ),

              Divider(height: 20, color: Colors.black,),

              Row(
                children: [
                  SizedBox(child: Icon(Icons.message , size: 40,),),
                   
                    SizedBox(width: 590,),
                     SizedBox(
                      width: 400,
                      height: 50,
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          
                          hintText: 'ملاحظات',
                          
                          
                         
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black , ),
                          ),
                        ),
                        onChanged: (value) {
                          
                        },
                      ),
                    ),
                    SizedBox(width: 10,),
                  
                ],
                
              ),


            ],
          ),
        ),
      ],
       ),
    );
  }
}
