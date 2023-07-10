import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Type d\'abonnement : $subscriptionType',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Prix d\'abonnement : $price',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Type de véhicule : $vehicleType',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Nombre de voyages : $numberOfTrips',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
