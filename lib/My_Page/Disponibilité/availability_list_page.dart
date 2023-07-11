// availability_list_page.dart

import 'package:flutter/material.dart';

class AvailabilityListPage extends StatelessWidget {
  final List<Availability> availabilityList;

  const AvailabilityListPage({Key? key, required this.availabilityList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des disponibilités'),
      ),
      body: ListView.builder(
        itemCount: availabilityList.length,
        itemBuilder: (context, index) {
          final availability = availabilityList[index];
          return ListTile(
            title: Text('Heure d\'arrivée: ${availability.arrivalTime.format(context)}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Heure de départ: ${availability.departureTime.format(context)}'),
                SizedBox(height: 40.0),
                Text('Arrêt: ${availability.stop}'),
                SizedBox(height: 40.0),
                Text('Numéro de téléphone: ${availability.phoneNumber}'),
                SizedBox(height: 40.0),
                Text('Numéro de plaque: ${availability.licensePlate}'),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Availability {
  final TimeOfDay arrivalTime;
  final TimeOfDay departureTime;
  final String stop;
  final int availableSeats;
  final String phoneNumber;
  final String licensePlate;

  Availability({
    required this.arrivalTime,
    required this.departureTime,
    required this.stop,
    required this.availableSeats,
    required this.phoneNumber,
    required this.licensePlate,
  });
}