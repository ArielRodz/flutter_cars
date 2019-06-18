import 'package:cars_app/Company/Controler/CompanyController.dart';
import 'package:cars_app/Company/Model/Company.dart';
import 'package:flutter/material.dart';

import 'company_card.dart';

class Companies extends StatelessWidget{

  Widget _buildCompanyList(List<Company> companies)
  {
    Widget productCard;

    if(companies.length > 0 )
    {
      productCard = GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder:(BuildContext context, int index) =>
          CompanyCard(companies[index], index),
        itemCount: companies.length ,);
    }
    else
    {
      productCard = Container(child: Center(child: Text('No se encontrarón compañias')),);
    }

    return productCard;

  }

  @override
  Widget build(BuildContext context) {
    return _buildCompanyList((CompanyController()).getCompanies());

  }


}