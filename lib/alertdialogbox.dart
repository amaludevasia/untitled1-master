import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Alert DialogBox';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,theme: ThemeData(primaryColor:Colors.brown ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const Center(
//           child: MyStatelessWidget(),
//             child:
//             RaisedButton(
//               onPressed: () => MyStatelessWidget(context),
//               child: Text('Click Here To Show Alert Dialog Box with ICON'),
//               textColor: Colors.white,
//               color: Colors.blueAccent,
//               padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
//             ),
//           ),
//         );
//   }
// }
//
// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () => showDialog<String>(
//         context: context,
//         builder: (BuildContext context) => AlertDialog(
//           title: const Text('stop playing'),
//           content: const Text('do you really want to quit the game'),
//
//           actions: <Widget>[
//             Image.network('https://image.shutterstock.com/image-vector/caution-sign-notice-alert-icon-260nw-1928216591.jpg',
//               width: 50, height: 50, fit: BoxFit.contain,),
//             Text('  Alert Dialog Title. '),
//             TextButton(
//               onPressed: () => Navigator.pop(context, 'quit'),
//               child: const Text('QUIT'),
//             ),
//             TextButton(
//               onPressed: () => Navigator.pop(context, 'no'),
//               child: const Text('OK'),
//             ),
//             TextButton(
//               onPressed: () => Navigator.pop(context, 'wait'),
//               child: const Text('YES'),
//             ),
//
//           ],
//         ),
//       ),
//       child: const Text('Game Zone'),
//     );
//   }
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: AlertWithIcon()
            )
        )
    );
  }
}

class AlertWithIcon extends StatefulWidget {

  AlertWithIconWidget createState() => AlertWithIconWidget();

}

class AlertWithIconWidget extends State {

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
              children:[
                Image.network('https://image.shutterstock.com/image-vector/caution-sign-notice-alert-icon-260nw-1928216591.jpg',
                  width: 50, height: 50, fit: BoxFit.contain,),
                Text('  Alert Dialog Title. ')
              ]
          ),
          content: Text("Are You Sure Want To Proceed?"),
          actions: <Widget>[
            FlatButton(
              child: Text("YES"),
              onPressed: () {
                //Put your code here which you want to execute on Yes button click.
                Navigator.of(context).pop();
              },
            ),

            FlatButton(
              child: Text("CANCEL"),
              onPressed: () {
                //Put your code here which you want to execute on Cancel button click.
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        RaisedButton(
          onPressed: () => showAlert(context),
          child: Text('Click Here To Show Alert Dialog Box with ICON'),
          textColor: Colors.white,
          color: Colors.blueAccent,
          padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        ),
      ),
    );
  }
}