import 'package:flutter/material.dart';


//Logotipni qaytaruvchi class

class GetLogo extends StatelessWidget {
  Color color;

  GetLogo({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      height: 115,
      width: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -16,
            left: -16,
            child: Image.asset(
              "assets/images/logo.png",
              height: 148,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
