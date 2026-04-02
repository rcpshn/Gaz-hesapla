import 'package:flutter/material.dart';

class ApartmentManagementScreen extends StatefulWidget {
  @override
  _ApartmentManagementScreenState createState() => _ApartmentManagementScreenState();
}

class _ApartmentManagementScreenState extends State<ApartmentManagementScreen> {
  final List<Map<String, dynamic>> apartments = [];
  final TextEditingController apartmentTypeController = TextEditingController();
  final TextEditingController countController = TextEditingController();
  final TextEditingController squareMetersController = TextEditingController();

  void addApartment() {
    final apartmentType = apartmentTypeController.text;
    final count = int.tryParse(countController.text);
    final squareMeters = double.tryParse(squareMetersController.text);

    if (apartmentType.isNotEmpty && count != null && squareMeters != null) {
      setState(() {
        apartments.add({
          'type': apartmentType,
          'count': count,
          'squareMeters': squareMeters,
        });
      });
      apartmentTypeController.clear();
      countController.clear();
      squareMetersController.clear();
    }
  }

  void removeApartment(int index) {
    setState(() {
      apartments.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apartment Management'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: apartmentTypeController,
              decoration: InputDecoration(labelText: 'Apartment Type'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: countController,
              decoration: InputDecoration(labelText: 'Count'),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: squareMetersController,
              decoration: InputDecoration(labelText: 'Square Meters'),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: addApartment,
            child: Text('Add Apartment'),
            style: ElevatedButton.styleFrom(primary: Colors.green),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: apartments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${apartments[index]['type']} - ${apartments[index]['count']}'),
                  subtitle: Text('${apartments[index]['squareMeters']} square meters'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => removeApartment(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}