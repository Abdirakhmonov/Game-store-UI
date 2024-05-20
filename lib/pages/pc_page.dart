import 'package:flutter/material.dart';
import 'package:game_app/dashboardpages/home_page.dart';
import 'package:game_app/model/pc_model.dart';
import 'package:game_app/widgets/minicontainer.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/middlecontainer.dart';

class PCPage extends StatelessWidget {
  const PCPage({super.key});

  Widget getTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        title,
        style: GoogleFonts.poppins()
            .copyWith(fontSize: 32, fontWeight: FontWeight.w600),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(60),
          getTitle("Trending PC"),
          SizedBox(
            height: 400,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    GetMiddleContainerForPc(
                        image: trendinglist[index].image,
                        color: trendinglist[index].color,
                        title: trendinglist[index].title,
                        text: trendinglist[index].text,
                        starCount: trendinglist[index].starcount),
                  ],
                );
              },
            ),
          ),
          const Gap(30),
          getTitle("New on PC"),
          SizedBox(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    MiniContainerForPc(
                        image: newonpclist[index].image,
                        color: newonpclist[index].color,
                        title: newonpclist[index].title,
                        text: newonpclist[index].text,
                        starCount: newonpclist[index].starcount),
                  ],
                );
              },
            ),
          ),
          getTitle("FPS Games"),
          SizedBox(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    MiniContainerForPc(
                        image: fpsgameslist[index].image,
                        color: fpsgameslist[index].color,
                        title: fpsgameslist[index].title,
                        text: fpsgameslist[index].text,
                        starCount: fpsgameslist[index].starcount),
                  ],
                );
              },
            ),
          ),
          getTitle("You Might Like"),
          const Gap(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset("assets/pcimages/img_8.png"),
          ),
          const Gap(20),
          GetText(title: "Outriders", text: "Cross-platform", rating: 5),
          const Gap(70),
          getTitle("Immersive RPGs"),
          SizedBox(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    MiniContainerForPc(
                        image: rgplist[index].image,
                        color: rgplist[index].color,
                        title: rgplist[index].title,
                        text: rgplist[index].text,
                        starCount: rgplist[index].starcount),
                  ],
                );
              },
            ),
          ),
          getTitle("Action/Adventure"),
          SizedBox(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    MiniContainerForPc(
                        image: actionlist[index].image,
                        color: actionlist[index].color,
                        title: actionlist[index].title,
                        text: actionlist[index].text,
                        starCount: actionlist[index].starcount),
                  ],
                );
              },
            ),
          ),
          getTitle("Puzzle"),
          SizedBox(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    MiniContainerForPc(
                        image: puzzlelist[index].image,
                        color: puzzlelist[index].color,
                        title: puzzlelist[index].title,
                        text: puzzlelist[index].text,
                        starCount: puzzlelist[index].starcount),
                  ],
                );
              },
            ),
          ),
          getTitle("Multiplayer"),
          SizedBox(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    MiniContainerForPc(
                        image: multiplayerlist[index].image,
                        color: multiplayerlist[index].color,
                        title: multiplayerlist[index].title,
                        text: multiplayerlist[index].text,
                        starCount: multiplayerlist[index].starcount),
                  ],
                );
              },
            ),
          ),
          getTitle("Simulation"),
          SizedBox(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    MiniContainerForPc(
                        image: sumulationlist[index].image,
                        color: sumulationlist[index].color,
                        title: sumulationlist[index].title,
                        text: sumulationlist[index].text,
                        starCount: sumulationlist[index].starcount),
                  ],
                );
              },
            ),
          ),
          getTitle("Horror"),
          SizedBox(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    MiniContainerForPc(
                        image: horrorlist[index].image,
                        color: horrorlist[index].color,
                        title: horrorlist[index].title,
                        text: horrorlist[index].text,
                        starCount: horrorlist[index].starcount),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
