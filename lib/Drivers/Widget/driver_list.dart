import 'package:cars_app/Company/Controler/CompanyController.dart';
import 'package:cars_app/Company/Model/Company.dart';
import 'package:cars_app/Drivers/Controler/DriverController.dart';
import 'package:cars_app/Drivers/Model/Driver.dart';
import 'package:flutter/material.dart';

import 'driver_card.dart';

class Drivers extends StatelessWidget{

  Widget _buildDriverList(List<Driver> drivers)
  {
    Widget productCard;

    if(drivers.length > 0 )
    {
      productCard = ListView.builder(
        itemBuilder:(BuildContext context, int index) =>
          DriverCard(drivers[index], index),
        itemCount: drivers.length ,);
    }
    else
    {
      productCard = Container(child: Center(child: Text('No se encontrarón compañias')),);
    }

    return productCard;

  }

  @override
  Widget build(BuildContext context) {
    return _buildDriverList((DriverControler()).getDrivers());

  }


}