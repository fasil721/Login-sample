import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/players.dart';
// import 'package:myapp/clubs.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    width: 200,
                    height: 200,
                    image: AssetImage(
                      "images/ucl.jpg",
                    ),
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.bottomCenter,
                padding: EdgeInsets.only(
                  bottom: 5,
                  right: 10,
                ),
                child: ElevatedButton(
                  child: Text(
                    "Log Out",
                    style: GoogleFonts.saira(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "My App",
            style: GoogleFonts.lobster(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w100,
              fontSize: 25,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Text(
                "Greatest Players",
                style: GoogleFonts.rubik(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Players(
              "images/cr.jpg",
              "Cristiano Ronaldo dos Santos Aveiro is a Portuguese professional footballer who plays as a forward for Premier League club Manchester United and captains the Portugal national team",
            ),
            Players(
              "images/me.jpg",
              "Lionel Andrés Messi, also known as Leo Messi, is an Argentine professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and captains the Argentina national team",
            ),
            Players(
              "images/ne.jpg",
              "Neymar da Silva Santos Júnior, known as Neymar, is a Brazilian professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and the Brazil national team. He is widely regarded as one of the best players in the world",
            ),
            Container(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Text(
                "Greatest Clubs",
                style: GoogleFonts.rubik(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
