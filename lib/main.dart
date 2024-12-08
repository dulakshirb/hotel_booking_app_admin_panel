import 'package:flutter/material.dart';
import 'package:hotel_booking_admin_panel/main_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hotel Booking App Admin Panel',
      home: MainLayout(),
    );
  }
}
