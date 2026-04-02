import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orangeAccent,
              Colors.deepOrange,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ 
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Bill Amount',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  // Add calculation logic here
                },
                child: Text('Calculate'),
              ),
              SizedBox(height: 20),
              Text(
                'Results will be displayed here',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Apartment Management
                    },
                    child: Text('Apartment Management'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Bill History
                    },
                    child: Text('Bill History'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}