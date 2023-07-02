import 'package:flutter/material.dart';
import 'package:gestion_transport/My_Page/Signaler_Incident.dart';
void main() {
  runApp(MyApp());
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