

import 'package:flutter/material.dart';

class SendPage  extends StatelessWidget{
  late String pageTextChanged;

  SendPage(this.pageTextChanged );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTextChanged),),
      body: Center(
        child: Text(pageTextChanged,style: TextStyle(color: Colors.red,fontSize: 50),),
      ),
    );
  }

}