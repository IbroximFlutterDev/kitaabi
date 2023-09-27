import 'package:flutter/material.dart';
import 'package:kitaabi/fragments/dashboard_of_fragments.dart';
import 'package:kitaabi/screens/login_screen.dart';
import 'package:kitaabi/screens/onBoardingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  DashboardOfFragments (

      ),

    );
  }
}
