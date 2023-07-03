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
      title: 'Gestion de transport terrestre',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IncidentReportPage(),
    );
  }
}
