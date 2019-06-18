import 'package:cars_app/Company/Model/Company.dart';
import 'package:cars_app/Company/Widget/title_default.dart';
import 'package:flutter/material.dart';

import 'num_vehicle.dart';

class CompanyCard extends StatelessWidget{

  Company _company;
  int _companyIndex;


  CompanyCard(this._company, this._companyIndex);



  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Stack(
          children: <Widget>[

            Container(
              height: 210.0,
              width: 160.0,
              child: Image.asset(_company.img, fit: BoxFit.cover,),
            ),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              width: 160.0,
              height: 40.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black, Colors.black.withOpacity(0.001)
                    ]

                  )
                ),
              ),
            ),
            Positioned(
              left: 10.0,
              bottom: 10.0,
              right: 10.0,
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                        TitleDefault(_company.name),
                        NumVehicle(_company.numVehicles)
                  ],
                ),
              ),
            )
          ],
        ),

      ),


    );


  }

}