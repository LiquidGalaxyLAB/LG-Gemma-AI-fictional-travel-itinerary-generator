import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
class AppBarWelcome extends StatelessWidget {
  const AppBarWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hi, Nitish!",
            style: GoogleFonts.poppins(textStyle: TextStyle( color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              height: 1,
              letterSpacing: 0.0,
              wordSpacing: 0.0,),
            ),
          ),
          Icon(
            Iconsax.profile_circle5,
            color: Colors.grey,
            size: 30,
          )
        ],
      ),
    );
  }
}