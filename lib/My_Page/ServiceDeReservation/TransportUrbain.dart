
import 'package:flutter/material.dart';




class TransportUrbain extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    const appTitle = 'Faites votre reservation';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Adresse',

            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Destination',

            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Date et Heure de voyage',

            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'nombre de passager',

            ),
          ),
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration:  const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'coordonnee',

            ),
          ),
        ),


        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => PremierePage() ));
            },
            child: Text('Valider la reservation'),
          ),
        ),

      ],
    );
  }
}

class PremierePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirmation'),
      ),
      body: const Center(
        child: Text('Merci pour votre confiance'),
      ),
    );
  }
}
