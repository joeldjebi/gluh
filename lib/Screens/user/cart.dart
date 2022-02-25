import 'package:flutter/material.dart';
import 'package:gluh/Screens/user/adresse/adresse.dart';
import 'package:gluh/Screens/user/login/phone.dart';
import 'package:gluh/Screens/user/register/register.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class CartCommande extends StatefulWidget {
  @override
  _CartCommandeState createState() => _CartCommandeState();
}

class _CartCommandeState extends State<CartCommande> {
  int qty = 1;
  int items = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back, color: Colors.white),
      //     onPressed: () => Navigator.of(context).pop(),
      //   ),
      //   title: Text("Commande"),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Container(
          // ignore: prefer_const_constructors
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Mon Panier",
                style: GoogleFonts.jost(
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff434343),
                  ),
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
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
                                        MediaQuery.of(context).size.height / 12,
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
                                        MediaQuery.of(context).size.height / 12,
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
                                        MediaQuery.of(context).size.height / 12,
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
              SizedBox(height: 5),
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
                height: 15,
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
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ListAdress()));
                              },
                              child: Text(
                                'Modifier',
                                style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff00a186),
                                  ),
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
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              height: 45,
                              padding: EdgeInsets.only(
                                  top: 4, left: 16, right: 16, bottom: 4),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.grey[200],
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12, blurRadius: 1)
                                  ]),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Code promo',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CartCommande()));
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff00a186),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0,
                                      bottom: 10.0,
                                      left: 5.0,
                                      right: 5.0),
                                  child: Text(
                                    "Appliquer",
                                    style: GoogleFonts.jost(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageRegister()),
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
                      "Commander maintenant",
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
      ),
    );
  }
}
