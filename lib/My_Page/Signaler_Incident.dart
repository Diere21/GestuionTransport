import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Importer le package intl pour formater la date


class IncidentReportPage extends StatefulWidget {
  @override
  _IncidentReportPageState createState() => _IncidentReportPageState();
}

class _IncidentReportPageState extends State<IncidentReportPage> {
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _vehicleNumberController = TextEditingController();

  String _selectedDate = '';// Variable pour stocker la date actuelle

  String _errorMessage = '';

  List<String> _dates = [
    DateTime.now().toString(), // Ajouter la date actuelle en première position
    '1er juillet 2023',
    '2 juillet 2023',
    '3 juillet 2023',
    // Ajoutez les autres dates de votre choix
  ];

  void _submitReport() {
    String description = _descriptionController.text.trim();
    String location = _locationController.text.trim();
    String vehicleNumber = _vehicleNumberController.text.trim();

    if (_selectedDate.isEmpty || description.isEmpty || location.isEmpty || vehicleNumber.isEmpty) {
      setState(() {
        _errorMessage = 'Veuillez remplir tous les champs.';
      });
    } else {
      // Soumettre le rapport à l'API ou effectuer toute autre action nécessaire

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Le signalement a été envoyé avec succès')),
      );

      _clearFields();
      setState(() {
        _errorMessage = '';
      });
    }
  }

  void _clearFields() {
    _descriptionController.clear();
    _locationController.clear();
    _vehicleNumberController.clear();
  }

  String _formatDate(String date) {
    // Convertir la date en objet DateTime
    DateTime dateTime = DateTime.parse(date);

    // Formater la date selon le format souhaité
    String formattedDate = DateFormat('dd MMMM yyyy').format(dateTime);

    return formattedDate;
  }

  @override
  void initState() {
    super.initState();
    _selectedDate= DateTime.now().toString(); // Obtenir la date actuelle
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signaler un incident'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.blue[900]!,
              Colors.blue[200]!,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                value: _selectedDate != '' ? _selectedDate : null,

                decoration: InputDecoration(
                  labelText: 'Date',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                items: _dates.map((date) {
                  return DropdownMenuItem<String>(
                    value: date,
                    child: Text(date), // Utiliser la méthode _formatDate pour formater la date
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedDate = value!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _locationController,
                decoration: InputDecoration(
                  labelText: 'Emplacement',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _vehicleNumberController,
                decoration: InputDecoration(
                  labelText: 'Numéro de véhicule ou d\'itinéraire',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              if (_errorMessage.isNotEmpty)
                Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              ElevatedButton(
                onPressed: _submitReport,
                child: Text('Soumettre'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
