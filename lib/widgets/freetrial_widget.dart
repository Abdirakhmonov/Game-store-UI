import 'package:flutter/material.dart';

class FreeTrialWidget extends StatelessWidget {

  Color color;
  String image;

  FreeTrialWidget({required this.color, required this.image, super.key});

  @override
  Widget build(BuildContext context) {

    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;


    return Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          height: screenheight * 0.38,
          width: screenwidth * 0.58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Image.asset("assets/images/$image", width: 210, height: 268,),
        ),
    );
  }
}
