import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MiniContainer extends StatelessWidget {
  String image;
  Color color;
  String title;
  String text;
  int starCount;

  MiniContainer({required this.image, required this.color, required this.title, required this.text,required this.starCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(25),
        Container(
          padding: EdgeInsets.only(top: 15),
          alignment: Alignment.bottomCenter,
          width: 125,
          height: 125,
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
              .copyWith(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        Text(
          text,
          style: GoogleFonts.poppins()
              .copyWith(fontWeight: FontWeight.w400, fontSize: 13),
        ),
        const Gap(3),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < starCount; i++)
              const Icon(
                Icons.star,
                color: Color(0XFFF7C71B),
                size: 15,
              ),
          ],
        ),
      ],
    );
  }
  }


class MiniContainerForPc extends StatelessWidget {
  String image;
  Color color;
  String title;
  String text;
  int starCount;

  MiniContainerForPc({required this.image, required this.color, required this.title, required this.text,required this.starCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(25),
        Container(
          padding: EdgeInsets.only(top: 15),
          alignment: Alignment.bottomCenter,
          width: 125,
          height: 125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
          ),
          child: Image.asset(
            "assets/pcimages/$image",
          ),
        ),
        const Gap(8),
        Text(
          title,
          style: GoogleFonts.poppins()
              .copyWith(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        Text(
          text,
          style: GoogleFonts.poppins()
              .copyWith(fontWeight: FontWeight.w400, fontSize: 13),
        ),
        const Gap(3),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < starCount; i++)
              const Icon(
                Icons.star,
                color: Color(0XFFF7C71B),
                size: 15,
              ),
          ],
        ),
      ],
    );
  }
}
