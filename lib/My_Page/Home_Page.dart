import 'package:flutter/material.dart';
import 'package:gestion_transport/My_Page/InterurbainPage.dart';
import 'package:gestion_transport/My_Page/Signaler_Incident.dart';
import 'package:gestion_transport/My_Page/UrbainPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    InterurbainPage(),
    UrbainPage(),
    IncidentReportPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            label: 'Transport interurbain',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_subway),
            label: 'Transport urbain',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'Signaler un incident',
          ),
        ],
      ),
    );
  }
}




