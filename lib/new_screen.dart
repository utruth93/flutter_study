import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    actions: [Padding(
      padding: EdgeInsets.only(right:50),
      child: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.email, color:Colors.black)),
    ),

    ],

    title: Text("쪽지",style: TextStyle(color:Colors.black),),
    backgroundColor: Colors.white,
    leading: IconButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back, color:Colors.black)),
  ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.email, color:Color(0xff999696), size: 50,),
        Text("받은 쪽지가 없습니다", style: TextStyle(color: Color(0xff999696)),)

      ],
    ),
  )
);
  }
}
