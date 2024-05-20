import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetTopContainer extends StatelessWidget {
  final String title;
  Color color;

  GetTopContainer({required this.title, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;

    //Tepada joylashgan Containerlarni qaytaruvchi class

    return Container(
      padding: const EdgeInsets.only(top: 105),
      width: double.infinity,
      height: screenheight * 0.23,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: color,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins().copyWith(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 32),
      ),
    );
  }
}
