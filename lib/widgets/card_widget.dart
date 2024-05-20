import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardThree extends StatelessWidget {

  String image;

  CardThree({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      height: 184,
      width: 315,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/$image"))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Current Balance",
                style: GoogleFonts.poppins().copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.white),
              ),
              const Spacer(),
              Image.asset(
                "assets/images/mastercardmini.png",
                width: 50,
                height: 40,
              )
            ],
          ),
          Text(
            "\$5,750,20",
            style: GoogleFonts.poppins().copyWith(
                fontSize: 28, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                "5282 3456 7890 1289",
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const Spacer(),
              Text(
                "09/25",
                style: GoogleFonts.poppins().copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}
