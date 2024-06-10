import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeIntroText extends StatelessWidget {
  const HomeIntroText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Plan The\nBest Trip To The",
          style: GoogleFonts.poppins(textStyle: TextStyle( color: Colors.white,
            fontSize: 46,
            height: 1,
            letterSpacing: 0.0,
            wordSpacing: 0.0,),
          ),
        ),
        GestureDetector(
          onTap: () {
            print("Clicked vacatrion");
          },
          child: Row(
            children: [
              Text(
                "Vacation",
                style: GoogleFonts.poppins(textStyle: TextStyle( color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 46,
                  height: 1,
                  letterSpacing: 0.0,
                  wordSpacing: 0.0,),
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 50,
                color: Colors.grey,
              ),
            ],
          ),
        )
      ],
    );
  }
}