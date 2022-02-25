import 'package:flutter/material.dart';
import 'package:gluh/Screens/user/commande/commandeenattentes.dart';
import 'package:gluh/Screens/user/commande/commandeencours.dart';
import 'package:google_fonts/google_fonts.dart';

class CommandeListe extends StatefulWidget {
  CommandeListe();

  @override
  _CommandeListeState createState() => _CommandeListeState();
}

class _CommandeListeState extends State<CommandeListe> {
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: TabBar(
                        labelColor: Color(0xff00a186),
                        indicatorColor: Color(0xff00a186),
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: "Commande en cours"),
                          Tab(text: 'Commande en terminé'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 600,
                      child: TabBarView(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CommandeEnCours()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        color: Colors.grey[200],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      10,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      // shape: BoxShape.circle,
                                                      // borderRadius: BorderRadius.circular(10),
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              'https://picsum.photos/250?image=9'),
                                                          fit: BoxFit.cover)),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Commande n : 1284649984",
                                                      style: GoogleFonts.jost(
                                                        textStyle: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Color(0xff434343),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Nombre de projet : 17",
                                                      style: GoogleFonts.jost(
                                                        textStyle: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              Color(0xff434343),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(5),
                                                        ),
                                                        color: Colors.orange,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Text(
                                                          "En cour de confirmation",
                                                          style:
                                                              GoogleFonts.jost(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xffffffff),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Commander il y a : ",
                                                          style:
                                                              GoogleFonts.jost(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xff434343),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "17 min",
                                                          style:
                                                              GoogleFonts.jost(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xff00a186),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        color: Colors.grey[200],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      10,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      // shape: BoxShape.circle,
                                                      // borderRadius: BorderRadius.circular(10),
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              'https://picsum.photos/250?image=9'),
                                                          fit: BoxFit.cover)),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Commande n : 1284649984",
                                                      style: GoogleFonts.jost(
                                                        textStyle: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Color(0xff434343),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Nombre de projet : 17",
                                                      style: GoogleFonts.jost(
                                                        textStyle: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              Color(0xff434343),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(5),
                                                        ),
                                                        color: Colors.orange,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Text(
                                                          "En cour de livraison",
                                                          style:
                                                              GoogleFonts.jost(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xffffffff),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Commander il y a : ",
                                                          style:
                                                              GoogleFonts.jost(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xff434343),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "17 min",
                                                          style:
                                                              GoogleFonts.jost(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xff00a186),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CommandeEnAttente()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        color: Colors.grey[200],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      10,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      // shape: BoxShape.circle,
                                                      // borderRadius: BorderRadius.circular(10),
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              'https://picsum.photos/250?image=9'),
                                                          fit: BoxFit.cover)),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Commande n : 1284649984",
                                                      style: GoogleFonts.jost(
                                                        textStyle: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color:
                                                              Color(0xff434343),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Nombre de projet : 17",
                                                      style: GoogleFonts.jost(
                                                        textStyle: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              Color(0xff434343),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(5),
                                                        ),
                                                        color:
                                                            Color(0xff00a186),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Text(
                                                          "Livré",
                                                          style:
                                                              GoogleFonts.jost(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xffffffff),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Livré le : ",
                                                          style:
                                                              GoogleFonts.jost(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xff434343),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "7 Avril 2022",
                                                          style:
                                                              GoogleFonts.jost(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xff00a186),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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
    );
  }
}
