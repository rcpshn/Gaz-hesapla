import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'apartment_provider.dart';
import 'bill_provider.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ApartmentProvider()),
        ChangeNotifierProvider(create: (context) => BillProvider()),
      ],
      child: MaterialApp(
        title: 'Gaz Hesapla',
        theme: ThemeData(
          primaryColor: Color(0xFFFF6B35),
        ),
        home: HomeScreen(),
      ),
    );
  }
}