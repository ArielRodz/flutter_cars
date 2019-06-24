import 'package:flutter/material.dart';


class TitleDefault extends StatelessWidget{

  final String title;

  TitleDefault(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
         // fontFamily: 'Oswald'

      ),
    );
  }


}

