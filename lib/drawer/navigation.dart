
import 'package:flutter/material.dart';

import 'SendPage.dart';
import 'about page.dart';
import 'OtherPage.dart';
void main()=> runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage>{

  String mainProfilePic = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3tX9GUY0RJdxvyvuX0zIx_PHafgmoLdm5Lg&usqp=CAU";
  String otherProfilePic = "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/368-mj-2516-02.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=9f3d0ad657bbca1c0f2db36ad7deb323";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Navigation Drawer"),),
        drawer: new Drawer(
            child:  ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("devasia"),
                  accountEmail: Text("devasia@email.com"),
                  currentAccountPicture: GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(mainProfilePic),
                      ),
                      onTap: () => print("Current User")
                  ),

                  decoration: BoxDecoration(
                    color: Colors.blueGrey,

                  ),
                ),
                ListTile(
                    title: Text("Home Page"),
                    trailing: Icon(Icons.menu),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => OtherPage("Home Page"),
                      ));
                    }
                ),

                ListTile(
                    title: Text("About Page"),
                    trailing: Icon(Icons.info),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => aboutPage("About Page"),
                      ));
                    }
                ),

                ListTile(
                    title: Text("sent"),
                    trailing: Icon(Icons.send),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => SendPage("send Page"),
                      ));
                    }
                ),

                ListTile(
                    title: Text("Settings Page"),
                    trailing: Icon(Icons.security),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => OtherPage("Settings Page"),
                      ));
                    }
                ),
                Divider(thickness: 1.0,),
                SizedBox(height: 50,),
                ListTile(
                  title: Text("Close"),
                  leading: Icon(Icons.cancel),
                  onTap: () => Navigator.of(context).pop(),
                ),
              ],
            )
        ),
        bottomNavigationBar: BottomAppBar(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
        IconButton(icon: Icon(Icons.menu,color: Colors.lightGreen), onPressed: () {},),
    IconButton(icon: Icon(Icons.search,color: Colors.amberAccent), onPressed: () {}),
    IconButton(icon: Icon(Icons.more_vert,color: Colors.deepOrange), onPressed: () {}),
        IconButton(icon: Icon(Icons.assistant,color: Colors.pinkAccent), onPressed: () {},),
        IconButton(icon: Icon(Icons.star,color: Colors.red,), onPressed: () {}),
    ],
    ),
    ),
    );
  }
}













