import 'package:flutter/material.dart';


class NumVehicle extends StatelessWidget{
  final int num;

  NumVehicle(this.num);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0)),

      child:Text(
        '$num',
        style: TextStyle(color: Colors.black),),


    );
  }
}