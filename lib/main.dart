import 'package:flutter/material.dart';
import 'package:gluh/Screens/user/profil.dart';
import 'package:gluh/home.dart';
import 'package:gluh/index.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Introduction Screen Plugin'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Enjoy Freedom",
              bodyWidget: Center(
                child: Text(
                  "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page",
                  textAlign: TextAlign.center,
                ),
              ),
              image: Lottie.asset('assets/i3.json'),
            ),
            PageViewModel(
              title: "Sell Safer",
              bodyWidget: Center(
                child: Text(
                  "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page",
                  textAlign: TextAlign.center,
                ),
              ),
              image: Lottie.asset('assets/i2.json'),
            ),
            PageViewModel(
              title: "Have Control",
              bodyWidget: Center(
                child: Text(
                  "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page",
                  textAlign: TextAlign.center,
                ),
              ),
              image: Lottie.asset('assets/i5.json'),
            )
          ],
          onDone: () {
            print("Done is clicked");
          },
          showSkipButton: true,
          showNextButton: true,
          nextFlex: 1,
          dotsFlex: 2,
          skipFlex: 1,
          animationDuration: 1000,
          curve: Curves.fastOutSlowIn,
          dotsDecorator: DotsDecorator(
              spacing: EdgeInsets.all(5),
              activeColor: Color(0xff00a186),
              // activeSize: Size.square(10),
              // size: Size.square(5),
              activeSize: Size(20, 10),
              size: Size.square(10),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
          skip: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Color(0xff00a186),
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      offset: Offset(4, 4))
                ]),
            child: Center(
              child: Text(
                "Skip",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          next: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Color(0xff00a186), width: 2)),
            child: Center(
              child: Icon(
                Icons.navigate_next,
                size: 30,
                color: Color(0xff00a186),
              ),
            ),
          ),
          done: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Color(0xff00a186),
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 40,
                      offset: Offset(4, 4))
                ]),
            child: Center(
              child: IconButton(
                icon: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IndexPage()));
                },
              ),
            ),
          ),
        ));
  }
}
