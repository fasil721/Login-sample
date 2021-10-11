import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Players extends StatelessWidget {
  var image;
  var about;

  Players(String this.image, String this.about);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(),
          padding: EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
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
            about,
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
