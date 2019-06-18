import 'package:cars_app/Company/Model/Company.dart';

class CompanyController{

    List<Company> getCompanies(){

       List<Company> list = [
         Company(name: "Aspers", description: "Cadena de ropa demoda joven", numVehicles: 50, product: "Textil", img: "assets/aspers.PNG"),
         Company(name: "Artals", description: "Tienda de productos ecológicos ", numVehicles: 7, product: "Textil", img: "assets/artals.PNG"),
         Company(name: "Kitos", description: "Cadena de articulos deportivo ", numVehicles: 15, product: "Textil", img: "assets/kitos.PNG"),
         Company(name: "Advers", description: "Tienda de productos electronicos", numVehicles: 24, product: "Electronica", img: "assets/advers.PNG"),
         Company(name: "Bions", description: "Distribuidor de bebidas energeticas", numVehicles: 32, product: "Comestible", img: "assets/bions.PNG"),


       ];
       return list;

    }
}