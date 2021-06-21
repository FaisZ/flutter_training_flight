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
            FlightImageAsset(),
            // Container(child: Image(image: AssetImage('images/ticket.png'),),)
            FlightBookButton()
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

class FlightImageAsset extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    AssetImage assetImage = AssetImage('images/ticket.png');
    Image image = Image(image: assetImage);
    return Container(child: image,);
  }
}

class FlightBookButton extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Container(
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
            elevation: MaterialStateProperty.all(6.0)),
        child: Text(
            "Book your flight",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontFamily: "Raleway",
          fontWeight: FontWeight.w700
          ),
        ),
        onPressed: (){
          bookFlight(context);
        },
      )
    );
  }

  void bookFlight(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("Flight Booked"),
      content: Text("Have a pleasant flight"),
    );
    showDialog(context: context, builder: (BuildContext context){
      return alertDialog;
    });
  }
}