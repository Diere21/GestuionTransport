import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SubscriptionPage(),
        'subscriptionDetails': (context) => SubscriptionDetailsPage(),
        'subscriptionForm': (context) => SubscriptionFormPage(),
      },
    );
  }
}

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
    Navigator.pushNamed(
      context,
      'subscriptionDetails',
      arguments: {
        'subscriptionType': subscriptionType,
        'price': price,
        'vehicleType': vehicleType,
        'numberOfTrips': numberOfTrips,
      },
    );
  }
}

class SubscriptionDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final String subscriptionType = arguments['subscriptionType'];
    final double price = arguments['price'];
    final String vehicleType = arguments['vehicleType'];
    final int numberOfTrips = arguments['numberOfTrips'];

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
                Navigator.pushNamed(context, 'subscriptionForm');
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

class SubscriptionFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulaire d\'abonnement'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Remplissez le formulaire d\'abonnement :',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Prénom',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nom',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Numéro de téléphone',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Adresse e-mail',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Région de résidence',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Quartier de résidence',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Profession ou fonction',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Soumettre le formulaire et effectuer les actions nécessaires
                },
                child: Text('Soumettre'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: Text('Annuler'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
