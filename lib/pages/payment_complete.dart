import 'package:flutter/material.dart';
import 'package:game_app/dashboardpages/dashboard_page.dart';
import 'package:game_app/pages/select_payment2.dart';
import 'package:game_app/widgets/buttoncontainer.dart';
import 'package:game_app/widgets/freetrial_widget.dart';
import 'package:game_app/widgets/gettopcontainer.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentComplete extends StatelessWidget {
  const PaymentComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GetTopContainer(
              title: "Payment Complete",
              color: const Color(0XFF77C164),
            ),
            const Gap(35),
            Text(
              "You`re All Set!",
              style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 27,
                  color: Colors.black),
            ),
            const Gap(15),
            Text(
              "Enjoy all of the perks of Gem for 14 days free!",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins().copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            Text(
              "Continue to the dashboard or go back.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins().copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            const Gap(15),
            FreeTrialWidget(
                color: const Color(0XFF77C164), image: "multiimage_2.png"),
            const Gap(30),
            ButtonContainer(
                title: "Go to Dashboard",
                color: const Color(0XFF77C164),
                heightCon: 59,
                widthCon: 195,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                }),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectPayment2(),
                  ),
                );
              },
              child: Text(
                "Go back",
                style: GoogleFonts.poppins()
                    .copyWith(color: const Color(0XFF518CFE)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
