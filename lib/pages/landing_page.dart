import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.greenAccent,
      child: new InkWell(

        onTap: () => print("tapped"),

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            new Text("Lets Quizz", style: new TextStyle(color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold),),
            new Text("Tap To start!", style: new TextStyle(color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),)

          ],
        ),
      ),
    );
  }

}