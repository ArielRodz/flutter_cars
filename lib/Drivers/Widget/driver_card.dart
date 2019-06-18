import 'package:cars_app/Drivers/Model/Driver.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DriverCard extends StatelessWidget{
  Driver driver;
  int index;

  DriverCard(this.driver, this.index);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.supervised_user_circle),
      title: Text(driver.name),
      subtitle: Text("Vehiculos: ${driver.numVehicles}"),
    );
  }


}
