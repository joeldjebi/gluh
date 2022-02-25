import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class ListAdress extends StatefulWidget {
  @override
  _ListAdressState createState() => _ListAdressState();
}

class _ListAdressState extends State<ListAdress> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return Color(0xff00a186);
    }

    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back, color: Colors.white),
      //     onPressed: () => Navigator.of(context).pop(),
      //   ),
      //   title: Text("Carnet d'adresse"),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Container(
          // ignore: prefer_const_constructors
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Détails de livraison",
                style: GoogleFonts.jost(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        padding: EdgeInsets.only(
                            top: 4, left: 16, right: 16, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.grey[200],
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 1)
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Joel Dje-Bi',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        padding: EdgeInsets.only(
                            top: 4, left: 16, right: 16, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.grey[200],
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 1)
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'jo.djebi@gmail.com',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        padding: EdgeInsets.only(
                            top: 4, left: 16, right: 16, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.grey[200],
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 1)
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '+225 0758754662',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        padding: EdgeInsets.only(
                            top: 4, left: 16, right: 16, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.grey[200],
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 1)
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Cocody, Deux plateaux mobile',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ADRESSE",
                      style: GoogleFonts.jost(
                        textStyle: TextStyle(
                          color: Color(0xff434343),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        size: 30,
                        color: Color(0xff00a186),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => AddAdresse()));
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Street 3 bloc",
                              style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xff434343),
                                ),
                              ),
                            ),
                            Text(
                              "Cocody, Deux plateaux mobile",
                              style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xff434343),
                                ),
                              ),
                            ),
                            Text(
                              "+225 0758754662",
                              style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xff434343),
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffe5b60c),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Street 3 bloc",
                              style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              "Cocody, Deux plateaux mobile",
                              style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              "+225 0758754662",
                              style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        // Checkbox(
                        //   checkColor: Colors.white,
                        //   fillColor:
                        //       MaterialStateProperty.resolveWith(getColor),
                        //   value: isChecked,
                        //   onChanged: (bool value) {
                        //     setState(() {
                        //       isChecked = value;
                        //     });
                        //   },
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => ContinueWithPhone()),
                  //);
                },
                // ignore: avoid_unnecessary_containers
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff00a186),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: const Text(
                      "Enregistrer les modifications",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
