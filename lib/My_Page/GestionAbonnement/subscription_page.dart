import 'package:flutter/material.dart';
import 'package:gestion_transport/My_Page/GestionAbonnement/Subcription_details_page.dart';
import 'package:gestion_transport/My_Page/GestionAbonnement/subscription_form_page.dart';

class SubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestion des Abonnements'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choisissez votre abonnement :',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _navigateToSubscriptionDetails(context, 'Mensuel', 50.0, 'Bus', 30);
              },
              child: Text('Abonnement Mensuel'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _navigateToSubscriptionDetails(context, 'Trimestriel', 150.0, 'Train', 90);
              },
              child: Text('Abonnement Trimestriel'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _navigateToSubscriptionDetails(context, 'Annuel', 500.0, 'Avion', 365);
              },
              child: Text('Abonnement Annuel'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToSubscriptionDetails(BuildContext context, String subscriptionType, double price, String vehicleType, int numberOfTrips) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SubscriptionDetailsPage(
          subscriptionType: subscriptionType,
          price: price,
          vehicleType: vehicleType,
          numberOfTrips: numberOfTrips,
        ),
      ),
    );
  }
}