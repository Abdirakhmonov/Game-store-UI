import 'package:flutter/material.dart';
import 'package:game_app/dashboardpages/home_page.dart';
import 'package:game_app/model/nintendo_model.dart';
import 'package:game_app/widgets/middlecontainer.dart';
import 'package:game_app/widgets/minicontainer.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class NintendoPage extends StatelessWidget {
  const NintendoPage({super.key});

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
          getTitle("Trending Wii"),
          SizedBox(
            height: 400,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      GetMiddleContainer(
                          image: trendingwiilist[index].image,
                          color: trendingwiilist[index].color,
                          title: trendingwiilist[index].title,
                          text: trendingwiilist[index].text,
                          starCount: trendingwiilist[index].starcount),
                    ],
                  );
                }),
          ),
          getTitle("Fan Favorites"),
          SizedBox(
            height: 240,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      MiniContainer(
                          image: favoriteslist[index].image,
                          color: favoriteslist[index].color,
                          title: favoriteslist[index].title,
                          text: favoriteslist[index].text,
                          starCount: favoriteslist[index].starcount),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 300,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      MiniContainer(
                          image: favoriteslist2[index].image,
                          color: favoriteslist2[index].color,
                          title: favoriteslist2[index].title,
                          text: favoriteslist2[index].text,
                          starCount: favoriteslist2[index].starcount),
                    ],
                  );
                }),
          ),
          getTitle("You Might Like"),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset("assets/gameimages/img_23.png"),
          ),
          const Gap(20),
          GetText(title: "Animal Crossing", text: "Nintendo Wii", rating: 5),
          const Gap(60),
          getTitle("Action/Adventure"),
          SizedBox(
            height: 235,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      MiniContainer(
                          image: actionlist2_1[index].image,
                          color: actionlist2_1[index].color,
                          title: actionlist2_1[index].title,
                          text: actionlist2_1[index].text,
                          starCount: actionlist2_1[index].starcount),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 235,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      MiniContainer(
                          image: actionlist2_2[index].image,
                          color: actionlist2_2[index].color,
                          title: actionlist2_2[index].title,
                          text: actionlist2_2[index].text,
                          starCount: actionlist2_2[index].starcount),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 280,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      MiniContainer(
                          image: actionlist2_3[index].image,
                          color: actionlist2_3[index].color,
                          title: actionlist2_3[index].title,
                          text: actionlist2_3[index].text,
                          starCount: actionlist2_3[index].starcount),
                    ],
                  );
                }),
          ),
          getTitle("Party"),
          SizedBox(
            height: 280,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      MiniContainer(
                          image: partylist[index].image,
                          color: partylist[index].color,
                          title: partylist[index].title,
                          text: partylist[index].text,
                          starCount: partylist[index].starcount),
                    ],
                  );
                }),
          ),
          getTitle("Roleplaying"),
          SizedBox(
            height: 235,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      MiniContainer(
                          image: reloplaylist[index].image,
                          color: reloplaylist[index].color,
                          title: reloplaylist[index].title,
                          text: reloplaylist[index].text,
                          starCount: reloplaylist[index].starcount),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 280,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      MiniContainer(
                          image: reloplaylist2[index].image,
                          color: reloplaylist2[index].color,
                          title: reloplaylist2[index].title,
                          text: reloplaylist2[index].text,
                          starCount: reloplaylist2[index].starcount),
                    ],
                  );
                }),
          ),
          getTitle("On Sale"),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Image.asset("assets/gameimages/img_42.png"),
          ),
          GetText(title: "Fitness Boxing 2", text: "Nintendo", rating: 4),
          const Gap(40),
          getTitle("Multiplayer"),
          SizedBox(
            height: 235,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      MiniContainer(
                          image: multiplayerlist_1[index].image,
                          color: multiplayerlist_1[index].color,
                          title: multiplayerlist_1[index].title,
                          text: multiplayerlist_1[index].text,
                          starCount: multiplayerlist_1[index].starcount),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 280,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      MiniContainer(
                          image: multiplayerlist_2[index].image,
                          color: multiplayerlist_2[index].color,
                          title: multiplayerlist_2[index].title,
                          text: multiplayerlist_2[index].text,
                          starCount: multiplayerlist_2[index].starcount),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
