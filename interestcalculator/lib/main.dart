import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "simple interest calculator",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String p = "", t = "", r = "",m="", result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        backgroundColor: myColor,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            SizedBox(height: 25),
            TextField(
              onChanged: (val) {
                p = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Principle',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (val) {
                t = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Time',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
            SizedBox(height: 10),
            
            TextField(
              onChanged: (val) {
                r = val;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter rate',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
            SizedBox(height: 12),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.red)),
              height: 40,
              color: myColor,
              child: Text(
                'calculate',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onPressed: () {
                
                setState(() {

                 
                  //formula for simple interest
                  result =
                      ((double.parse(p) * double.parse(t) * double.parse(r)) /
                              100)
                          .toString();
                });
              },
            ),
            Center(
              child: Text(
                "The result is $result",
                style: TextStyle(fontSize: 22),
              ),
            )
          ],
        ),
      ),
    );
  }
}

const myColor = Color(0xFFE21717);
