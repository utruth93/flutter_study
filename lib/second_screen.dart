import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  String title;

  SecondScreen(this.title);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  Widget makeCustomColumn(IconData iconData, String text){
    return Column(
      children: [
        Icon(iconData, size: 40, color: Colors.deepOrange),
        Text(text)
      ],
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "마이페이지",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back, color: Colors.black))),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 주석
            Text("유진실님 안녕하세요!"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               makeCustomColumn(Icons.person, "회원안내"),
                makeCustomColumn(Icons.person, "회원안내"),
                makeCustomColumn(Icons.person, "회원안내"),
                makeCustomColumn(Icons.person, "회원안내")
              ],
            )
          ],
        )));
  }
}
