import 'package:cars_app/Drivers/Model/Driver.dart';
import 'package:cars_app/Profile/Widget/profile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'driver_profile_card.dart';

class DriverCard extends StatelessWidget{
  Driver driver;
  int index;

  DriverCard(this.driver, this.index);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DriverProfilePage(driver.name, "assets/driver.png")),
        );
      },
      leading:  Image.asset("assets/driver.png"),
      title: Text(driver.name),
      subtitle: Text("Vehiculos: ${driver.numVehicles}"),
    );
  }


}
