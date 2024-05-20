import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonContainer extends StatelessWidget {
  double heightCon;
  double widthCon;
  String title;
  Color color;
  Function() onTap;

  ButtonContainer(
      {required this.title,
      required this.color,
      required this.heightCon,
      required this.widthCon,
        required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: heightCon,
        width: widthCon,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: color),
        child: Text(
          title,
          style: GoogleFonts.poppins()
              .copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
    );
  }
}
