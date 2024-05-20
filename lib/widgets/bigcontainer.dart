import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class BigContainer extends StatelessWidget {
  String image;
  Color color;
  String title;
  String text;

  BigContainer(
      {required this.image,
      required this.color,
      required this.title,
      required this.text,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(25),
        Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          width: 245,
          height: 144,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
          ),
          child: Image.asset(
            "assets/gameimages/$image",
          ),
        ),
        const Gap(8),
        Text(
          title,
          style: GoogleFonts.poppins()
              .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        Text(
          text,
          style: GoogleFonts.poppins()
              .copyWith(fontWeight: FontWeight.w400, fontSize: 13, color: const Color(0XFF6B6A6A)),
        ),
      ],
    );
  }
}
