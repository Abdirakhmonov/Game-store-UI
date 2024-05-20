import 'package:flutter/material.dart';
import 'package:game_app/widgets/getlogo.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'onboarding_welcome.dart';

//Birinchi sahifa

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getSecondPage() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingSinSup(),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    getSecondPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Gem",
            style: GoogleFonts.montserrat().copyWith(
                color: const Color(0XFF000000),
                fontSize: 40,
                fontWeight: FontWeight.w600),
          ),
          const Gap(30),

          //Logotipni qaytaruvchi class
          GetLogo(color: const Color(0XFF6D5ED2)),
        ],
      )),
    );
  }
}
