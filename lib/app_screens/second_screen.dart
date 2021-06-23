import 'package:flutter/material.dart';
import 'package:css_colors/css_colors.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CSSColors.orange,
      child: Column(
        children: [
          Text("This is the second screen"),
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Go Back"),)
        ],
      ),
    );
  }
}
