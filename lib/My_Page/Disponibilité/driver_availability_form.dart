import 'package:flutter/material.dart';
import 'availability_list_page.dart';

class DriverAvailabilityForm extends StatefulWidget {
  @override
  _DriverAvailabilityFormState createState() => _DriverAvailabilityFormState();
}

class _DriverAvailabilityFormState extends State<DriverAvailabilityForm> {
  // Variables pour stocker les disponibilités renseignées
  late TimeOfDay _arrivalTime;
  late TimeOfDay _departureTime;
  late String _stop;
  late int _availableSeats;
  late String _phoneNumber;
  late String _licensePlate;
  List<Availability> availabilityList = []; // Liste de disponibilités

  @override
  void initState() {
    super.initState();
    _arrivalTime = TimeOfDay.now();
    _departureTime = TimeOfDay.now();
    _stop = '';
    _availableSeats = 0;
    _phoneNumber = '';
    _licensePlate = '';
  }

  // Fonction pour afficher un sélecteur d'heure
  Future<TimeOfDay?> _selectTime(BuildContext context, TimeOfDay initialTime) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
    return pickedTime;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Renseigner disponibilité'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AvailabilityListPage(availabilityList: availabilityList)),
              );
            },
            icon: Icon(Icons.list),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text('Heure d\'arrivée'),
              subtitle: Text(_arrivalTime.format(context)),
              onTap: () async {
                final selectedTime = await _selectTime(context, _arrivalTime);
                if (selectedTime != null) {
                  setState(() {
                    _arrivalTime = selectedTime;
                  });
                }
              },
            ),
            ListTile(
              title: Text('Heure de départ'),
              subtitle: Text(_departureTime.format(context)),
              onTap: () async {
                final selectedTime = await _selectTime(context, _departureTime);
                if (selectedTime != null) {
                  setState(() {
                    _departureTime = selectedTime;
                  });
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Arrêt'),
              onChanged: (value) {
                setState(() {
                  _stop = value;
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Nombre de places disponibles'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _availableSeats = int.parse(value);
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Numéro de téléphone'),
              onChanged: (value) {
                setState(() {
                  _phoneNumber = value;
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Numéro de plaque'),
              onChanged: (value) {
                setState(() {
                  _licensePlate = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Créer une instance d'Availability
                final availability = Availability(
                  arrivalTime: _arrivalTime,
                  departureTime: _departureTime,
                  stop: _stop,
                  availableSeats: _availableSeats,
                  phoneNumber: _phoneNumber,
                  licensePlate: _licensePlate,
                );

                // Ajouter l'instance d'Availability à la liste de disponibilités
                availabilityList.add(availability);

                // Afficher la liste de disponibilités
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AvailabilityListPage(
                      availabilityList: availabilityList,
                    ),
                  ),
                );
              },
              child: Text('Enregistrer'),
            ),
          ],
        ),
      ),
    );
  }
}