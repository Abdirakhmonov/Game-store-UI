import 'package:flutter/material.dart';
import 'package:game_app/pages/create_account.dart';
import 'package:game_app/pages/select_payment2.dart';
import 'package:game_app/widgets/buttoncontainer.dart';
import 'package:game_app/widgets/gettopcontainer.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectPayment extends StatelessWidget {
  const SelectPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GetTopContainer(
              title: "Select Payment",
              color: const Color(0XFFF56651),
            ),
            const Gap(45),
            CardContainer(title: "Credit Card", image: "mastercard.png"),
            const Gap(20),
            CardContainer(title: "Paypal", image: "paypal.png"),
            const Gap(25),
            ButtonContainer(
                title: "Continue",
                color: const Color(0XFFF56651),
                heightCon: 59,
                widthCon: 195,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectPayment2(),
                    ),
                  );
                }),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateAccount(),
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

class CardContainer extends StatelessWidget {
  String title;
  String image;

  CardContainer({required this.title, required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0XFF9D9BAD),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/$image",
              width: 140,
              height: 92,
            ),
            Text(
              title,
              style: GoogleFonts.poppins()
                  .copyWith(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
