import 'package:flutter/material.dart';
import 'package:gestion_transport/My_Page/Disponibilit%C3%A9/driver_availability_form.dart';
import 'package:gestion_transport/My_Page/GestionAbonnement/subscription_page.dart';
import 'package:gestion_transport/My_Page/ServiceDeReservation/home_page.dart';
import 'package:gestion_transport/My_Page/Signaler_Incident.dart';
import 'package:gestion_transport/My_Page/UrbainPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeReservation(),
    SubscriptionPage(),
    IncidentReportPage(),
    DriverAvailabilityForm(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: 'Faire une réservation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'Souscrire à un abonnement',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'Signaler un incident',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            label: 'Renseigner disponibilité',
          ),
        ],
      ),

    );
  }
}




