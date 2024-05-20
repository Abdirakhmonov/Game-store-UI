import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_app/model/home_model.dart';
import 'package:game_app/widgets/bigcontainer.dart';
import 'package:game_app/widgets/middlecontainer.dart';
import 'package:game_app/widgets/minicontainer.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaystationPage extends StatelessWidget {
  const PlaystationPage({super.key});

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
          getTitle("Playstation"),
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
                    GetMiddleContainer(
                        image: newListGame[index].image,
                        color: newListGame[index].color,
                        title: newListGame[index].title,
                        text: newListGame[index].text,
                        starCount: newListGame[index].starCount),
                  ],
                );
              },
            ),
          ),
          const Gap(30),
          getTitle("Featured Game"),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              "assets/gameimages/img_2.png",
            ),
          ),
          const Gap(15),
          GetText(title: "Cyberpunk 2077", text: "Cross-platform", rating: 3),
          const Gap(30),
          getTitle("Popular Games"),
          SizedBox(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    MiniContainer(
                        image: populargameslist[index].image,
                        color: populargameslist[index].color,
                        title: populargameslist[index].title,
                        text: populargameslist[index].text,
                        starCount: populargameslist[index].starCount),
                  ],
                );
              },
            ),
          ),
          getTitle("Recommended"),
          SizedBox(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    MiniContainer(
                        image: recommendedlist[index].image,
                        color: recommendedlist[index].color,
                        title: recommendedlist[index].title,
                        text: recommendedlist[index].text,
                        starCount: recommendedlist[index].starCount),
                  ],
                );
              },
            ),
          ),
          getTitle("Coming Soon"),
          SizedBox(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    MiniContainer(
                        image: comingsoonlist[index].image,
                        color: comingsoonlist[index].color,
                        title: comingsoonlist[index].title,
                        text: comingsoonlist[index].text,
                        starCount: comingsoonlist[index].starCount),
                  ],
                );
              },
            ),
          ),
          getTitle("Genres"),
          SizedBox(
            height: 290,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(20.0),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    BigContainer(
                      image: genreslist[index].image,
                      color: genreslist[index].color,
                      title: genreslist[index].title,
                      text: genreslist[index].text,
                    ),
                  ],
                );
              },
            ),
          ),
          getTitle("Discounted Games"),
          const Gap(25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset("assets/gameimages/img_14.png"),
          ),
          const Gap(20),
          GetText(title: "Ori and the Will of the Wisps", text: "Cross-platform", rating: 4),
          const Gap(100),
        ],
      ),
    );
  }
}


class GetText extends StatelessWidget {

  String title;
  String text;
  int rating;

  GetText({required this.title, required this.text, required this.rating, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins()
                .copyWith(fontWeight: FontWeight.w600, fontSize: 19),
          ),
          const Gap(2),
          Row(
            children: [
              Text(
                text,
                style: GoogleFonts.poppins().copyWith(
                    color: const Color(0XFF6B6A6A),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              const Icon(
                Icons.star,
                color: Color(0XFFF7C71B),
              ),
              const Gap(8),
              Text(
                "$rating stars",
                style: GoogleFonts.poppins().copyWith(
                    color: const Color(0XFF6B6A6A),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}

