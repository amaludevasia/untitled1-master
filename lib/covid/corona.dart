import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp( Corona ());
}

class Corona extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> CoronaState () ;


}

class CoronaState extends State {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: SafeArea(
       child: Scaffold(
         appBar: AppBar(
           title: Text('Corona Tracker'),backgroundColor: Colors.brown,
         ),
         body:Container (
           height: double.infinity,
           width: double.infinity,
           child: WebView( javascriptMode:JavascriptMode.unrestricted,
             initialUrl: 'https://covid19.who.int/',

           ),

         ),
       ),
     ),
   );
  }
}
