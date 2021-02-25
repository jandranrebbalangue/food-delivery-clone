import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(height: 150),
          Center(
              child: Text("The Delicious Food",
                  style: TextStyle(color: Colors.black))),
          SizedBox(height: 150),
          TextField(
            decoration: InputDecoration(
              labelText: "User Name",
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: "Password",
            ),
          ),
          SizedBox(height: 30),
          ButtonTheme(
            padding: EdgeInsets.all(16),
            minWidth: 300,
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/menu');
              },
              textColor: Colors.white,
              color: Colors.orange,
              child: Text("Login"),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Forget Password?",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          SizedBox(height: 50),
          ButtonTheme(
            padding: EdgeInsets.all(16),
            minWidth: 300,
            child: RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              color: Colors.blue,
              child: Text("Connect with facebook"),
            ),
          ),
          SizedBox(height: 15),
          Text("Don't have an account? Sign up")
        ],
      ),
    ));
  }
}
