import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     // title: 'ListView',
      theme: ThemeData(
        primarySwatch: Colors.purple,
   ),
     home:  MyseenPage()
   );
  }
}

class MyseenPage extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('LIST')
    ),
        //body: myListView(BuildContext context) (
      //final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
    //     'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
    //     'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
    //     'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
    //     'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
    //     'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
    //     'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
    //     'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
    //     'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];
    //
    //   return ListView.builder(
    //     itemCount: europeanCountries.length,
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         title: Text(europeanCountries[index]),
    //       );
    // )
    // };
    //
    // )
    body: ListView(
    children:[
      ListTile(
        leading: Image.asset('assets/images/tree.jpg'),
        title: Text("school",style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w700)),
        trailing:Icon(Icons.keyboard_alt_sharp) ,
        textColor: Colors.pinkAccent,


    ),
      ListTile(
        leading: Icon(Icons.local_hospital),
        title: Text("hospital"),
        trailing:Icon(Icons.arrow_forward) ,

      ),
      ListTile(
        leading: Icon(Icons.park),
        title: Text("park"),
        trailing:Icon(Icons.keyboard_alt_sharp) ,
        onTap: (){
          Fluttertoast.showToast(msg: "come an make your time valuable",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
         // timeInSecForIosWeb: 5,
          backgroundColor: Colors.red,
          textColor: Colors.black,
           fontSize: 100 );
        },

      ),
      ListTile(
        leading: Icon(Icons.local_post_office),
        title: Text("postoffice"),
        trailing:Icon(Icons.keyboard_alt_sharp) ,
      ),
    ]
    ),
    );
  }

}

// myListView(Type buildContext, BuildContext context) {
// }

