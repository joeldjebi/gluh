import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:gluh/Screens/user/cart.dart';

class CommandePharmacie extends StatefulWidget {
  @override
  _CommandePharmacieState createState() => _CommandePharmacieState();
}

class _CommandePharmacieState extends State<CommandePharmacie> {
  final double topWidgetHeight = 200.0;
  final double avatarRadius = 50.0;
  int qty = 1;
  int items = 2;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      body: SingleChildScrollView(
        child: new Stack(
          children: <Widget>[
            new Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(10.0),
                    //   topRight: Radius.circular(10.0),
                    // ),
                    color: Colors.black,
                    image: DecorationImage(
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.7), BlendMode.dstATop),
                        image: AssetImage('assets/ii2.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 80),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Text(
                        "Dites nous quels médicaments vous désirez acheter",
                        style: GoogleFonts.jost(
                          textStyle: TextStyle(
                            fontSize: 20,
                            color: Color(0xff434343),
                            height: 1.3,
                          ),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        padding: EdgeInsets.only(
                            top: 4, left: 16, right: 16, bottom: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              // blurRadius: 2,
                            )
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Entrez le nom du médicament',
                            hintStyle: TextStyle(
                                fontSize: 14.0, fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "OU",
                  style: GoogleFonts.jost(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff434343),
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff00a186),
                        ),
                      ),
                      child: Icon(Icons.camera_alt),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Scanner l'ordonnance",
                      style: GoogleFonts.jost(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff434343),
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                  child: Container(
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.cancel_outlined,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 8,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              12,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/medicament.png'),
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
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
                                      '1 500 FCFA',
                                      style: GoogleFonts.jost(
                                        textStyle: TextStyle(),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      qty -= 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_circle,
                                    color: Color(0xff00a186),
                                    size: 25,
                                  ),
                                ),
                                Text(
                                  qty > 0 ? qty.toString() : '1',
                                  style: TextStyle(fontSize: 16),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      qty += 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Color(0xff00a186),
                                    size: 25,
                                  ),
                                ),
                              ],
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Icon(
                                      Icons.cancel_outlined,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 8,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              12,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/medicament.png'),
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
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
                                      '1 500 FCFA',
                                      style: GoogleFonts.jost(
                                        textStyle: TextStyle(),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      qty -= 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_circle,
                                    color: Color(0xff00a186),
                                    size: 25,
                                  ),
                                ),
                                Text(
                                  qty > 0 ? qty.toString() : '1',
                                  style: TextStyle(fontSize: 16),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      qty += 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Color(0xff00a186),
                                    size: 25,
                                  ),
                                ),
                              ],
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Icon(
                                      Icons.cancel_outlined,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 8,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              12,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/medicament.png'),
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
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
                                      '1 500 FCFA',
                                      style: GoogleFonts.jost(
                                        textStyle: TextStyle(),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      qty -= 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_circle,
                                    color: Color(0xff00a186),
                                    size: 25,
                                  ),
                                ),
                                Text(
                                  qty > 0 ? qty.toString() : '1',
                                  style: TextStyle(fontSize: 16),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      qty += 1;
                                    });
                                  },
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Color(0xff00a186),
                                    size: 25,
                                  ),
                                ),
                              ],
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartCommande()),
                    );
                  },
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff00a186),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: const Text(
                        "Verifié la disponibilté",
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
                  height: 20,
                ),
              ],
            ),
            Positioned(
              top: 170,
              left: 50,
              child: Card(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.local_pharmacy_outlined,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "La pharmacie du bonheur",
                                      style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff434343),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.add_location, size: 18),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Cocody deux plateaux mobile",
                                      style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                          color: Color(0xff434343),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.delivery_dining, size: 18),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      " 14 min",
                                      style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff00a186),
                                        ),
                                      ),
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
            ),
          ],
        ),
      ),
    );
  }
}
