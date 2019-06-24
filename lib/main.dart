import 'package:flutter/material.dart';

import 'Company/Widget/company_list.dart';
import 'Drivers/Widget/driver_list.dart';
import 'Profile/Widget/profile_card.dart';

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
     Drivers(),
  UserProfilePage(),

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
        title: Text("App", style: TextStyle(color: Colors.white), ),
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
              title: Text('Mi Perfil'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red[400],
          onTap: _onItemTapped,
        )

    );
  }
}
