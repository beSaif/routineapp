import 'package:flutter/material.dart';

class NightScreen extends StatefulWidget {
  static const routeName = "/NightScreen";
  const NightScreen({Key? key}) : super(key: key);

  @override
  State<NightScreen> createState() => _NightScreenState();
}

class _NightScreenState extends State<NightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(),
      ),
    );
  }
}
