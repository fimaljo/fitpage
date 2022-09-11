import 'package:fitpage_stock_scan_parser/presentation/detailsScreen/details_screen.dart';
import 'package:fitpage_stock_scan_parser/presentation/homeScreen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitPage Stock Scan Parser',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.black),
      home: HomeScreen(),
    );
  }
}
