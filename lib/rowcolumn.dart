import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

//
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MATHS',
//       theme: ThemeData(
//         primarySwatch: Colors.brown,
//       ),
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false, //for throwing the right corner debug
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   mymaths createState() => mymaths();
// }
//
// class mymaths extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("numericals"),
//       ),
//       body: Row(
//          //mainAxisAlignment: MainAxisAlignment.end,
//           children:<Widget>[
//             Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//               children:[
//             Container(
//               decoration:BoxDecoration(
//                   borderRadius:BorderRadius.circular(7),
//                   color:Colors.yellow
//               ),
//               child: Text("one",style: TextStyle(color:Colors.black,fontSize:50),),
//             ),
//             Container(
//               decoration:BoxDecoration(
//                   borderRadius:BorderRadius.circular(400),
//                   color:Colors.blueAccent
//               ),
//               child: Text("two",style: TextStyle(color:Colors.white,fontSize:50),),
//             ),
//             Container(
//               decoration:BoxDecoration(
//                   borderRadius:BorderRadius.circular(20),
//                   color:Colors.deepOrange
//               ),
//               child: Text("three",style: TextStyle(color:Colors.white,fontSize:50,fontStyle: FontStyle.italic),),
//             )
//     ]
//             ),
//             Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children:[
//                 Container(
//                   decoration:BoxDecoration(
//                       borderRadius:BorderRadius.circular(100),
//                       color:Colors.red
//                   ),
//                   child: Text("aaa",style: TextStyle(color:Colors.black,fontSize:50),),
//                 ),
//                 Container(
//                   decoration:BoxDecoration(
//                       borderRadius:BorderRadius.circular(400),
//                       color:Colors.greenAccent
//                   ),
//                   child: Text("bbb",style: TextStyle(color:Colors.white,fontSize:50),),
//                 ),
//                 Container(
//                   decoration:BoxDecoration(
//                       borderRadius:BorderRadius.circular(20),
//                       color:Colors.pink
//                   ),
//                   child: Text("ccc",style: TextStyle(color:Colors.white,fontSize:50,fontStyle: FontStyle.italic),),
//                 )
//     ]
//             ),
//           ]
//
//
//       ),
//
//     );
//   }
// }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Row Example"),
      ),
      body: Column(children: <Widget>[
        Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Container(
            margin: EdgeInsets.all(12.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.yellow),
            child: Text(
              "node",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.brown),
            child: Text(
              "Flutter",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.purple),
            child: Text(
              "MySQL",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ]),
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
          Container(
            margin: EdgeInsets.all(12.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.red),
            child: Text(
              "React.js",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.greenAccent),
            child: Text(
              "kotlin",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blueAccent),
            child: Text(
              "Dart",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ]),
      ]),
    );
  }
}
