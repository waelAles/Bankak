import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(preferredSize: Size.fromHeight(90.0),
       child: AppBar(
        leading: IconButton(
          icon: Icon(Icons.supervisor_account,
            size: 30,
          color: Colors.white,
          ),
          onPressed: () {},
           
        ),
        toolbarHeight: 100,
        centerTitle: true,
         backgroundColor: Color.fromARGB(255, 205, 20, 7),
        title: Image.asset('image/t.jpg',
        fit: BoxFit.scaleDown,
        height: 80,
        ),
      actions: [
        IconButton(onPressed:(){
          showSearch(context: context, delegate: MySearchDelegate());
        } ,
         icon: Icon(Icons.search),
         ),
      ],
       )
    ),
    body: Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.end,
      
      children: [
        
        AppBar(
          backgroundColor: Colors.grey[600],
          
          //actions: [
            title:
             ElevatedButton(
                   onPressed: (){
                    setState(() {
                     Navigator.pushNamedAndRemoveUntil(context, '/l' , (route) => false);          

                    });
                   },
                    style: ElevatedButton.styleFrom( primary:Colors.white ,
                    foregroundColor: Colors.red,
                    ),
                    child : Text(
                     'خروج',
                     style: TextStyle(
                       color: Colors.red,
                       fontSize: 30,
                       fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    ),
              toolbarHeight: 50,
             
          //],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
        IconButton(onPressed: (){},
         icon: Icon(Icons.contact_mail,),
         iconSize: 50,
         color: Colors.red,
        //  highlightColor: Colors.red,
        //  hoverColor: Colors.red,
        //  splashColor: Colors.red,
         ),
          IconButton(onPressed: (){},
         icon: Icon(Icons.description),
         iconSize: 50,
          color: Colors.red,
         ),
          IconButton(onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, '/c' , (route) => false);          },
         icon: Icon(Icons.autorenew),
         iconSize: 50,
         color: Colors.red,
         ),
       ],
        ),
        SizedBox(height: 10,),

        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "تفاصيل الحساب",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

             Text(
              "دفع فواتير        ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

             Text(
              "تحويلات   ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),

         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
        IconButton(onPressed: (){},
         icon: Icon(Icons.credit_score,),
         iconSize: 50,
         color: Colors.red,
        //  highlightColor: Colors.red,
        //  hoverColor: Colors.red,
        //  splashColor: Colors.red,
         ),
          IconButton(onPressed: (){},
         icon: Icon(Icons.qr_code),
         iconSize: 50,
          color: Colors.red,
         ),
          IconButton(onPressed: (){},
         icon: Icon(Icons.money),
         iconSize: 50,
         color: Colors.red,
         ),
       ],
        ),
        SizedBox(height: 10,),

        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "سحب بدون بطاقة ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

             Text(
              "       بنككPAY",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

             Text(
              "طلب الودائع الإستثمارية",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
        IconButton(onPressed: (){},
         icon: Icon(Icons.person_add,),
         iconSize: 50,
         color: Colors.red,
        //  highlightColor: Colors.red,
        //  hoverColor: Colors.red,
        //  splashColor: Colors.red,
         ),
          IconButton(onPressed: (){},
         icon: Icon(Icons.today),
         iconSize: 50,
          color: Colors.red,
         ),
          IconButton(onPressed: (){},
         icon: Icon(Icons.credit_card),
         iconSize: 50,
         color: Colors.red,
         ),
       ],
        ),
        SizedBox(height: 10,),

        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "إدارة المستفيدين",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

             Text(
              "المعاملات السابقة",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

             Text(
              "إدارة البطاقات",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
        IconButton(onPressed: (){},
         icon: Icon(Icons.receipt_long,),
         iconSize: 50,
         color: Colors.red,
        //  highlightColor: Colors.red,
        //  hoverColor: Colors.red,
        //  splashColor: Colors.red,
         ),
          IconButton(onPressed: (){},
         icon: Icon(Icons.checklist),
         iconSize: 50,
          color: Colors.red,
         ),
          IconButton(onPressed: (){},
         icon: Icon(Icons.settings),
         iconSize: 50,
         color: Colors.red,
         ),
       ],
        ),
        SizedBox(height: 10,),

        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "   طلبات",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

             Text(
              "أمر دفع دائم",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

             Text(
              "الضبط ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        

      ],
    ),
    );
  }
}

class MySearchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(onPressed: (){
      if(query.isEmpty){
      close(context, null);
      }
      else{
      query = '';
      }
    },
     icon: const Icon(Icons.clear),
     ),
  ];

  @override
  Widget? buildLeading(BuildContext context)=> IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: ()=> close(context, null),

  );

  @override
  Widget buildResults(BuildContext context) => Center(
    child: Text(query,
    style: const TextStyle(fontSize: 64 , fontWeight: FontWeight.bold),
    ),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
     List<String> suggestions = [];
     return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: ((context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      }),
      );
    
  }

}