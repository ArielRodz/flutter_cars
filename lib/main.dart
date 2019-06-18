import 'package:flutter/material.dart';

import 'Company/Widget/company_list.dart';
import 'Drivers/Widget/driver_list.dart';
import 'Drivers/Widget/driver_list_version_two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
   List<Widget> _widgetOptions = <Widget>[
    Companies(),
     FriendsListPage(),
    Text(
      'Index 2: School',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Clientes", style: TextStyle(color: Colors.white), ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Empresas'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('Conductores'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Yo'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red[400],
          onTap: _onItemTapped,
        )

    );
  }
}
