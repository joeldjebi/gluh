import 'package:flutter/material.dart';
import 'package:gluh/Screens/livreur/livreurmap.dart';
import 'package:google_fonts/google_fonts.dart';

class CommandeEnCours extends StatefulWidget {
  @override
  _CommandeEnCoursState createState() => _CommandeEnCoursState();
}

class _CommandeEnCoursState extends State<CommandeEnCours> {
  int qty = 1;
  int items = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00a186),
        title: Text(
          "Commande en cours",
          style: GoogleFonts.jost(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10.0),
              child: Container(
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 5,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://ecotoxicologie.fr/wp-content/uploads/2020/04/Pixabay-medicaments-1024x683.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Paracetamol',
                                          style: GoogleFonts.jost(
                                            textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Text(
                                          '1g',
                                          style: GoogleFonts.jost(
                                            textStyle: TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        color: Colors.orange,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "En cour",
                                          style: GoogleFonts.jost(
                                            textStyle: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "Qté : ",
                                            style: GoogleFonts.jost(
                                              textStyle: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff434343),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "13",
                                            style: GoogleFonts.jost(
                                              textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff434343),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '1 500 FCFA',
                                            style: GoogleFonts.jost(
                                              textStyle: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10.0),
              child: Container(
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 5,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://ecotoxicologie.fr/wp-content/uploads/2020/04/Pixabay-medicaments-1024x683.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Paracetamol',
                                          style: GoogleFonts.jost(
                                            textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Text(
                                          '1g',
                                          style: GoogleFonts.jost(
                                            textStyle: TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        color: Colors.orange,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "En cour",
                                          style: GoogleFonts.jost(
                                            textStyle: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "Qté : ",
                                            style: GoogleFonts.jost(
                                              textStyle: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff434343),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "13",
                                            style: GoogleFonts.jost(
                                              textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff434343),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '1 500 FCFA',
                                            style: GoogleFonts.jost(
                                              textStyle: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Adresse de livraison',
                            style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Street 3 bloc',
                        style: GoogleFonts.jost(
                          textStyle: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Text(
                        'Cocody, Deux plateau mobile',
                        style: GoogleFonts.jost(
                          textStyle: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Text(
                        '+225 0758754662',
                        style: GoogleFonts.jost(
                          textStyle: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Article",
                            style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            "2",
                            style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sous total",
                            style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            "2000 FCFA",
                            style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Livraison",
                            style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Text(
                            "1000 FCFA",
                            style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.jost(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "3 000 FCFA",
                    style: GoogleFonts.jost(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LivreurMap()),
                );
              },
              // ignore: avoid_unnecessary_containers
              child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff00a186),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: const Text(
                    "Suivre le livreur",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
