import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Listgroup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget with InputValidationMixin {
  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form validation example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: formGlobalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: NetworkImage(
                              "https://docs.flutter.dev/assets/images/docs/catalog-widget-placeholder.png"),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Flutter",
                          style: TextStyle(color: Colors.black87, fontSize: 50),
                        ),
                      ),
                    ]),

                //Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                const SizedBox(height: 50),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.blueGrey,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  validator: (email) {
                    if (isEmailValid(email!))
                      return null;
                    else
                      return 'Enter a valid email address';
                  },
                ),
                const SizedBox(height: 24),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.blueGrey,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  maxLength: 6,
                  obscureText: true,
                  validator: (password) {
                    if (isPasswordValid(password!))
                      return null;
                    else
                      return 'Enter a valid password';
                  },
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      if (formGlobalKey.currentState!.validate()) 
                      {
                        //formGlobalKey.currentState!.save();
                        // use the email provided here
                       // Navigator.push(context,MaterialPageRoute(builder:(context)=>listg),

                      }
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>  MyApp()));
                      },
                    child: Text("Submit")),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: "Message sent",
                      backgroundColor: Colors.grey,
                    );
                  },

                  // child:Text("Forget Password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,),)) ,
                  child: Text(
                    "Forget Password",
                    style: GoogleFonts.amiko(
                        textStyle: Theme.of(context).textTheme.subtitle1),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text('New User? Create Account'),
                ),
                  ],

                ),

          ),

        ));
  }
}

mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length == 6;

  bool isEmailValid(String email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }
}
