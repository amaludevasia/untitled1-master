
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'sharedpref.dart';

void main()=>runApp(sharep());

class sharep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyLpgpg(),
    );
  }
}

class MyLpgpg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>MyLpgpgState();
}

class MyLpgpgState extends State {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  late SharedPreferences logindata;
  late bool newuser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }
  Future<void> check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => MyDashboard()));
    }
  }

  void dispose() {
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" login in shared pref"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login Form",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "the name will pass to the next page",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: username_controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: password_controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                String username = username_controller.text;
                String password = password_controller.text;
                if (username != '' && password != '') {
                  print('Successfull');
                  logindata.setBool('login', false);
                  logindata.setString('username', username);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyDashboard()));
                }
              },
              child: Text("Log-In"),
            )
          ],
        ),
      ),
    );
  }
  }



