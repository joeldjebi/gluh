import 'package:flutter/material.dart';
import 'package:gluh/Screens/livreur/livreurmap.dart';
import 'package:gluh/home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/pharmacie/pharmacie.dart';
import 'Screens/user/profil.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    HomePage(),
    LivreurMap(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff00a186),
        selectedItemColor: Color(0xfffecd1a),
        unselectedItemColor: Color(
          (0xffffffff),
        ),
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
            ),
            label: 'Mon livreur',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
