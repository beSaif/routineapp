import 'package:flutter/material.dart';
import 'package:routineapp/Navbar.dart';
import 'package:routineapp/Screens/NightScreen/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NavbarActivity.routeName: (context) => const NavbarActivity(),
        NightScreen.routeName: (context) => const NightScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavbarActivity(),
    );
  }
}
