import 'package:gestion_transport/My_Page/Home_Page.dart';
import 'package:gestion_transport/My_Page/InterurbainPage.dart';
import 'package:gestion_transport/My_Page/PagesInscription/Caract%C3%A9ristique/Ecran_login/Page_Login.dart';
import 'package:gestion_transport/My_Page/Signaler_Incident.dart';
import 'package:gestion_transport/My_Page/UrbainPage.dart';

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
      initialRoute: '/login', // Modifier la valeur de initialRoute pour diriger vers la page de connexion
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginScreen(), // Ajouter la route vers la page de connexion
        '/interurbain': (context) => InterurbainPage(),
        '/urbain': (context) => UrbainPage(),
        '/signaler_incident': (context) => IncidentReportPage(),
      },
    );
  }
}
