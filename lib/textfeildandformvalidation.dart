
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("LOGIN"),
            ),
            body: Center(
                child: LOGIN()
            )
        )
    );
  }
}
class LOGIN extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image(
              image: NetworkImage(
                  "https://docs.flutter.dev/assets/images/docs/catalog-widget-placeholder.png"
                //  "https://iotvnaw69daj.i.optimole.com/AXVzL2w.n2y9~6666f/w:auto/h:auto/q:90/https://www.codeinwp.com/wp-content/uploads/2017/08/before-starting-a-blog.jpg",
              ),
            ),
          ),
    const Padding(
    padding: EdgeInsets.all(50),
    child: TextField(
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Email',
    ),
    ),
    ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your username',
              ),
            ),
          ),
        ],
    );
  }
}