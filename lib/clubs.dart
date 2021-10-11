import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Clubs extends StatelessWidget {
  var image;
  var name;

  Clubs(String this.image, String this.name);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(),
          padding: EdgeInsets.all(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              width: 150,
              height: 150,
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            name,
            style: GoogleFonts.rubik(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
