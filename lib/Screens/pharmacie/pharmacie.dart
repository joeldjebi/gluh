import 'package:flutter/material.dart';

class PharmaciePage extends StatefulWidget {
  @override
  _PharmaciePageState createState() => _PharmaciePageState();
}

class _PharmaciePageState extends State<PharmaciePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Text("Pharmacie"),
    ));
  }
}
