import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
        child: Column(children: [
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 100, minWidth: 100),
            child: Container(
              margin: EdgeInsets.only(left: 21, right: 21, top: 0, bottom: 0),
              height: 180,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage("assets/images/biryani.jpg"))),
            ),
          ),
          ConstrainedBox(
              constraints: BoxConstraints(minHeight: 50, minWidth: 180),
              child: Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 0, top: 8, bottom: 0),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 16, right: 16, top: 0, bottom: 0),
                          child: Text("Veg Biryani Masala",
                              style: TextStyle(fontSize: 24)),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.only(
                              left: 16, right: 16, top: 0, bottom: 0),
                          child: Text("Basmati Rice, Paneer And Tamato atc",
                              style: TextStyle(fontSize: 24)),
                        ),
                        SizedBox(height: 10),
                        Container(
                            margin: EdgeInsets.only(
                                left: 16, right: 16, top: 0, bottom: 0),
                            child: Text("₱890", style: TextStyle(fontSize: 24)))
                      ])))
        ]));
  }
}
