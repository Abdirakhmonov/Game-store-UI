import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class GetMiddleContainer extends StatelessWidget {

  String image;
  Color color;
  String title;
  String text;
  int starCount;

  GetMiddleContainer({required this.image, required this.color, required this.title, required this.text,required this.starCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(25),
        Container(
          alignment: Alignment.bottomCenter,
          width: 194,
          height: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
          ),
          child: Image.asset(
            "assets/gameimages/$image",
            height: 220,
            fit: BoxFit.cover,
          ),
        ),
        const Gap(10),
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
              )
          ],
        )
      ],
    );
  }
}



class GetMiddleContainerForPc extends StatelessWidget {

  String image;
  Color color;
  String title;
  String text;
  int starCount;

  GetMiddleContainerForPc({required this.image, required this.color, required this.title, required this.text,required this.starCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(25),
        Container(
          alignment: Alignment.bottomCenter,
          width: 194,
          height: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
          ),
          child: Image.asset(
            "assets/pcimages/$image",
            height: 220,
            fit: BoxFit.cover,
          ),
        ),
        const Gap(10),
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
              )
          ],
        )
      ],
    );
  }
}
