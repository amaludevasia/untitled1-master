import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter Basic List Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ListView(
          children: <Widget>[

         Image(
           alignment: Alignment.topCenter,
        image: NetworkImage(
          "https://iotvnaw69daj.i.optimole.com/AXVzL2w.n2y9~6666f/w:auto/h:auto/q:90/https://www.codeinwp.com/wp-content/uploads/2017/08/before-starting-a-blog.jpg",
//"https://raw.githubusercontent.com/sreedeviluminar/flutterprojects/master/assets/images/superwomen.jpg",
           // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqNE-JQG0ghWLvM_6dybmz6x1z1s5AyK3MTg&usqp=CAU"
        )

     ),
    //         Row(crossAxisAlignment: CrossAxisAlignment.start,
    //             children: <Widget>[
    //               ListTile(
    //
    //                    title: Text('Oeschinen Lake Campground',style: TextStyle(color: Colors.black),),
    //                    subtitle: Text('place in Switzerland',style: TextStyle(color: Colors.grey),),
    //                    trailing: Icon(Icons.star),iconColor: Colors.red,enableFeedback: true,
    //                  ),
    // ],),
            //        Text(
            //           'Oeschinen Lake Campground'
            //                'place in Switzerland',
            //            style: TextStyle(color: Colors.black, fontSize: 10),
            //         ),
            //      Icon(Icons.star,color: Colors.red,),
            //       Text(
            //           '41'),
            //
            ListTile(

              title: Text('Oeschinen Lake Campground',style: TextStyle(color: Colors.black),),
              subtitle: Text('place in Switzerland',style: TextStyle(color: Colors.grey),),
              trailing: Icon(Icons.star),iconColor: Colors.red,enableFeedback: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             children:[
              Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
              Icon(Icons.call,color:Colors.blueAccent,),
      Text('CALL'),
      ]
    ),
               Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children:[
                     Icon(Icons.assistant_navigation,color:Colors.blueAccent,),Text('ROUTE'),
                   ]
               ),

               Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children:[
                     Icon(Icons.share,color:Colors.blueAccent,),Text('SHARE')
                   ]
               ),
              // Icon(Icons.call,color:Colors.blueAccent,),Text('CALL'),
               //Icon(Icons.assistant_navigation,color:Colors.blueAccent,),Text('ROUTE'),
            //   Icon(Icons.share,color:Colors.blueAccent,),Text('SHARE')

             ]

            ),
            // ListTile(
            //
            //   leading: Icon(Icons.call),textColor: Colors.blueAccent,
            //   subtitle: Text('call'),
            //   trailing: Icon(Icons.share),iconColor: Colors.blueAccent,
            // ),
            SizedBox(
              height: 10,
            ),

      TextFormField(
        decoration: InputDecoration(
          labelText: "Type anything you want",
          fillColor: Colors. white,
          enabledBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors. blueGrey, width: 1.0,style: BorderStyle.solid),
            borderRadius: BorderRadius. circular(5),
          ),
        ),
      ),
          ],
        ),
      ),
    );
  }
}