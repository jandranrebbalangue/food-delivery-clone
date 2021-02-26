import 'package:flutter/material.dart';

class QuickBites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = (size.height - kToolbarHeight - 24) / 2;
    final width = size.width / 2;
    return GridView.count(
      childAspectRatio: (height / width),
      crossAxisSpacing: 10,
      crossAxisCount: 2,
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/french.jpg"))),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/french.jpg"))),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sabia sobre comida",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 5),
              Text("yahoo comida", style: TextStyle(color: Colors.grey)),
              Row(children: [
                Text("150"),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "40%",
                ),
                SizedBox(
                  width: 5,
                ),
                Text("off"),
                SizedBox(
                  width: 5,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "ADD",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ]),
            ],
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sabia sobre comida",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 5),
              Text("yahoo comida", style: TextStyle(color: Colors.grey)),
              Row(children: [
                Text("150"),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "40%",
                ),
                SizedBox(
                  width: 5,
                ),
                Text("off"),
                SizedBox(
                  width: 5,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "ADD",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
