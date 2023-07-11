import 'package:flutter/material.dart';
import 'package:gestion_transport/My_Page/GestionAbonnement/Subscription_form_page.dart';
class SubscriptionDetailsPage extends StatelessWidget {
  final String subscriptionType;
  final double price;
  final String vehicleType;
  final int numberOfTrips;

  SubscriptionDetailsPage({
    required this.subscriptionType,
    required this.price,
    required this.vehicleType,
    required this.numberOfTrips,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de l\'abonnement'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Type d\'abonnement : $subscriptionType',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Prix d\'abonnement : $price',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Type de véhicule : $vehicleType',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Nombre de voyages : $numberOfTrips',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubscriptionFormPage(),
                  ),
                );
              },
              child: Text('S\'abonner'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text('Retourner aux abonnements'),
            ),
          ],
        ),
      ),
    );
  }
}