import 'package:flutter/material.dart';
import 'package:game_app/pages/choose_payment.dart';
import 'package:game_app/pages/payment_complete.dart';
import 'package:game_app/widgets/buttoncontainer.dart';
import 'package:game_app/widgets/card_widget.dart';
import 'package:game_app/widgets/gettopcontainer.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectPayment2 extends StatelessWidget {
  const SelectPayment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GetTopContainer(
              title: "Select Payment",
              color: const Color(0XFF6D5ED2),
            ),
            const Gap(50),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Gap(20),
                  CardThree(image: "background_3.png"),
                  const Gap(15),
                  CardThree(image: "background_2.png"),
                  const Gap(15),
                  CardThree(image: "background_1.png"),
                  const Gap(20),
                ],
              ),
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                      color: Color(0XFF6D5ED2),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Payment Methods",
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "edit",
                            style: GoogleFonts.poppins().copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    height: 105,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0XFF9D9BAD),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/mastercard.png",
                          height: 26,
                          width: 40,
                        ),
                        const Gap(10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text("..2457",
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black)),
                            Text("10/26",
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black)),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.done,
                          size: 24,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Gap(35),
            ButtonContainer(
                title: "Checkout",
                color: const Color(0XFF6F5EE2),
                heightCon: 59,
                widthCon: 199,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentComplete(),
                    ),
                  );
                }),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectPayment(),
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
