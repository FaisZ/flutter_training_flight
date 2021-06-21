import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        //width: 200,
        //height: 100,
        // margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.only(left: 10, top: 40),
        child: Column(
          children: [
            Row(
              children: [
                firstText("Spice Jet"),
                secondText("From Mumbai to Bangalore"),
              ],
            ),
            Row(
              children: [
                firstText("Air India"),
                secondText("From Jaipur to Goa"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Expanded firstText(text) {
    return Expanded(
      child: Text(
          text,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 35,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            color: Colors.white
          ),
        ),
    );
  }

  Expanded secondText(text) {
    return Expanded(
      child: Text(
        text,
        textDirection: TextDirection.ltr,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 20,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            color: Colors.white
        ),
      ),
    );
  }

}