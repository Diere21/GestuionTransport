import 'package:gestion_transport/My_Page/Disponibilit%C3%A9/driver_availability_form.dart';
import 'package:gestion_transport/My_Page/GestionAbonnement/subscription_page.dart';
import 'package:gestion_transport/My_Page/Home_Page.dart';
import 'package:gestion_transport/My_Page/PagesInscription/Caract%C3%A9ristique/Ecran_login/Page_Login.dart';
import 'package:gestion_transport/My_Page/ServiceDeReservation/home_page.dart';
import 'package:gestion_transport/My_Page/Signaler_Incident.dart';


import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/material.dart';

void main() {
  // Initialiser les données de localisation
  initializeDateFormatting('fr', null).then((_) {
    // Exécuter l'application
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application de transport',
      initialRoute: '/login',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginScreen(),
        // '/interurbain': (context) => HomeReservation(),
        // '/urbain': (context) => SubscriptionPage(),
        // '/signaler_incident': (context) => IncidentReportPage(),
        // '/renseigner_disponibilite': (context) => DriverAvailabilityForm(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/login') {
          return MaterialPageRoute(
            builder: (context) => LoginScreen(),
            settings: settings,
          );
        } else if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) => HomePage(),
            settings: settings,
          );
        }
        // Gérer les autres routes ici
        return null;
      },
    );
  }
}

