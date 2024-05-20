import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/pages/signinscreen.dart';
import 'package:game_app/widgets/buttoncontainer.dart';
import 'package:game_app/widgets/dotContainer.dart';
import 'package:game_app/widgets/freetrial_widget.dart';
import 'package:game_app/widgets/gettopcontainer.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FreeTrialController extends StatefulWidget {
  const FreeTrialController({super.key});

  @override
  State<FreeTrialController> createState() => _FreeTrialControllerState();
}

class _FreeTrialControllerState extends State<FreeTrialController> {
  List<Map<String, dynamic>> model = [
    {
      "color": const Color(0XFF6D5ED2),
      "title": "Start 14 days free of charge",
      "image": "multiimage_1.png",
    },
    {
      "color": const Color(0XFF77C164),
      "title": "Acces over 3000 games",
      "image": "multiimage_2.png",
    },
    {
      "color": const Color(0XFF518CFE),
      "title": "Digital and mail rentals",
      "image": "multiimage_3.png",
    },
    {
      "color": const Color(0XFFF56651),
      "title": "Multiple plans",
      "image": "multiimage_4.png",
    }
  ];

  final pageController = PageController();
  int currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          GetTopContainer(
            title: "Start Your Free Trial",
            color: model[currenIndex]["color"],
          ),
          Expanded(
            child: PageView(
              onPageChanged: (int index) {
                setState(() {
                  currenIndex = index;
                });
              },
              controller: pageController,
              children: [
                FreeTrialWidget(
                    color: model[currenIndex]["color"],
                    image: model[currenIndex]["image"]),
                FreeTrialWidget(
                    color: model[currenIndex]["color"],
                    image: model[currenIndex]["image"]),
                FreeTrialWidget(
                    color: model[currenIndex]["color"],
                    image: model[currenIndex]["image"]),
                FreeTrialWidget(
                    color: model[currenIndex]["color"],
                    image: model[currenIndex]["image"])
              ],
            ),
          ),
          DotContainer(
            index: currenIndex,
            color: model[currenIndex]["color"],
          ),
          const Gap(20),
          Text(
            "${model[currenIndex]["title"]}",
            style: GoogleFonts.poppins().copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          const Gap(35),
          ButtonContainer(
              title: "Start Trial",
              color: model[currenIndex]["color"],
              heightCon: 61,
              widthCon: 238,
              onTap: () {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              }),
          const Gap(20),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const SignIn(), //Keyingi sahifaga o'tkazib yuboradi
                ),
              );
            },
            child: Text(
              "Skip",
              style: GoogleFonts.poppins().copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: const Color(0XFF000000)),
            ),
          ),
          const Gap(30)
        ]),
      ),
    );
  }
}
