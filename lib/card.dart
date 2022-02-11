import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'alertdialogbox.dart';

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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.green,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Text('A card that can be tapped'),
          ),
        ),
      ),
    );
  }
}