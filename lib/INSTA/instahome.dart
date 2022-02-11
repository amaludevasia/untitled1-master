import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Insta());
}

class Insta extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InstaState();
}

class InstaState extends State {
  String mainProfilePic = "https://media.socastsrm.com/wordpress/wp-content/blogs.dir/2166/files/2019/03/maxresdefault-4.jpg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme:
              TextTheme(subtitle1: TextStyle(color: Colors.black))),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.camera),
          title: Text('Instagram'),
          backgroundColor: Colors.blueAccent,
          titleTextStyle: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.send),
            ),
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                backgroundImage: NetworkImage(mainProfilePic),
                maxRadius: 35.0,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "crazy_username",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                Container(
                  child: Text(
                    "Marvel DC",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Avengers",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(30),
                    ),
                    Column(
                      children: <Widget>[
                        Text("10",style:
                        TextStyle(color: Colors.black, fontSize: 25),),
                        SizedBox(width: 100), // give it width
                        Text("Post"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text("18m",style:
                        TextStyle(color: Colors.black, fontSize: 25),),
                        SizedBox(width: 100), // give it width
                        Text("Follower"),
                      ],
                    ),
                    // Column(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     children: [
                    //       Container(
                    //         margin: EdgeInsets.all(15.0),
                    //         padding: EdgeInsets.all(8.0),
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(8),
                    //             color: Colors.white),
                    //         child: Text(
                    //           "Followers",
                    //           style:
                    //               TextStyle(color: Colors.black, fontSize: 25),
                    //         ),
                    //       ),
                    //     ]),
                    Column(
                      children: <Widget>[
                        Text("700",style:
                        TextStyle(color: Colors.black, fontSize: 25),),
                        SizedBox(width: 100), // give it width
                        Text("Following"),
                      ],
                    )
                  ],
                ),
                Divider(thickness: 50.0,color: Colors.blueGrey,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Text("FOLLOW",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w100))),
                    ),
                    SizedBox(width: 50),
                    Icon(
                      Icons.send,
                      color: Colors.black,
                    )
                  ],
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      //alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5zGpdMX4U3OnIimuWwopxGRdcg881VuUrTQ&usqp=CAU"),
                        maxRadius: 30.0,
                      ),
                    ),
                    Container(
                      //alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9kp4KWq2LhoviVATvnDRD4Ish9E3CW2GAuQ&usqp=CAU"),
                        maxRadius: 30.0,
                      ),
                    ),
                    Container(
                      //alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfidgB07nFoerTjx2oueFHixSBUNkDCDMqaQ&usqp=CAU"),
                        maxRadius: 30.0,
                      ),
                    ),
                    Container(
                      //alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfyunVkxWFfVLFDC2kM3SIW-ONUK0w91PyBw&usqp=CAU"),
                        maxRadius: 30.0,
                      ),
                    ),
                    Container(
                      //alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNeAcbGLYtVaSSR9SaiRBAmxr94SxDIkHKeQ&usqp=CAU"),
                        maxRadius: 30.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
         Flexible(
    child: new Container(
    child: new GridView.builder(
    itemCount: 16,
    gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    itemBuilder: (BuildContext context, int index) {
    return new Container(
    margin: EdgeInsets.all(2.0),
    color: Colors.grey,
    child: new Image.asset("assets/images/pic$index.png"),
    );
    }
    ),
    )
    )

          ],  )
          ,
        ),
      );
  }
}


