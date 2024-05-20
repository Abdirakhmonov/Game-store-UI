import 'package:flutter/material.dart';
import 'package:game_app/pages/create_account.dart';
import 'package:game_app/pages/freetrial_controller.dart';
import 'package:game_app/pages/signinscreen.dart';
import 'package:game_app/widgets/freetrial_widget.dart';
import 'package:game_app/widgets/getlogo.dart';
import 'package:game_app/widgets/gettopcontainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';

//Ikkinchi sahifa WelcomePage

class OnboardingSinSup extends StatelessWidget {
  const OnboardingSinSup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GetTopContainer(
              title: "Welcome to Gem",
              color: const Color(0XFF6D5ED2),
            ),
            const Gap(60),
            GetLogo(
              color: const Color(0XFF6D5ED2),
            ),
            const Gap(35),
            Text(
              "Digital Game Rentals",
              style: GoogleFonts.poppins().copyWith(
                  color: const Color(0XFF000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const Gap(40),
            GetButton(
              title: "Login to your account",
              icon: Icons.person,
              status: true,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignIn(),
                  ),
                );
              },
            ),
            const Gap(18),
            GetButton(
              title: "Create a new account",
              icon: Icons.person,
              status: false,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateAccount(),

                  ),
                );
              },
            ),
            const Gap(35),
            Text(
              "Not a member of Gem yet?",
              style: GoogleFonts.poppins()
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 17),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const FreeTrialController(), //Keyingi sahifaga o'tkazib yuboradi
                  ),
                );
              },
              child: Text(
                "Start your free trial",
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF6D5ED2)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GetButton extends StatelessWidget {
  String title;
  IconData icon;
  bool status;
  Function() onTap;

  GetButton(
      {required this.title,
      required this.icon,
      required this.status,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 30),
        height: 70,
        width: screenwidth * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: status ? Colors.white : const Color(0XFF6D5ED2),
            border: Border.all(
                width: 1,
                color: status
                    ? const Color(0XFF9D9BAD)
                    : const Color(0XFF6D5ED2))),
        child: Row(
          children: [
            Icon(
              icon,
              color: status ? Colors.black : Colors.white,
              size: 28,
            ),
            const Gap(15),
            Text(
              title,
              style: GoogleFonts.poppins().copyWith(
                  color: status ? const Color(0xFF111111) : Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
