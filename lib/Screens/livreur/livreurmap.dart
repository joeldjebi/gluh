import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LivreurMap extends StatefulWidget {
  @override
  _LivreurMapState createState() => _LivreurMapState();
}

class _LivreurMapState extends State<LivreurMap> {
  final double topWidgetHeight = 200.0;
  final double avatarRadius = 50.0;
  int qty = 1;
  int items = 2;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: new Stack(
          children: <Widget>[
            new Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 1.1,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(10.0),
                    //   topRight: Radius.circular(10.0),
                    // ),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/map.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                // SizedBox(height: 150),
              ],
            ),
            Positioned(
              top: 370,
              left: 13,
              child: Card(
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.9,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Votre livreur est en route",
                                style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff434343),
                                  ),
                                ),
                              ),
                              Divider()
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[100],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                12,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                9,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            // borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://picsum.photos/250?image=9'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Joel Dje-Bi",
                                            style: GoogleFonts.jost(
                                              textStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff434343),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xff00a186),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.phone,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xff00a186),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.message,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xff00a186),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Icon(
                                                Icons.person,
                                                color: Color(0xffffffff),
                                                size: 15,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Joel Dje-Bi",
                                            style: GoogleFonts.jost(
                                              textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff434343),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "Détails",
                                          style: GoogleFonts.jost(
                                            textStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff00a186),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff00a186),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Icon(
                                          Icons.phone,
                                          color: Color(0xffffffff),
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "+225 0758754662",
                                      style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff434343),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff00a186),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Icon(
                                          Icons.location_on,
                                          color: Color(0xffffffff),
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Deux plateaux mobile",
                                      style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff434343),
                                        ),
                                      ),
                                    ),
                                  ],
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
            ),
          ],
        ),
      ),
    );
  }
}
