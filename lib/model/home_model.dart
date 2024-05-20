import 'package:flutter/material.dart';

class NewsSection {
  String image;
  Color color;
  String title;
  String text;
  int starCount;
  NewsSection(
      {required this.image,
      required this.color,
      required this.title,
      required this.text,
      required this.starCount});
}

List<NewsSection> newListGame = [
  NewsSection(
      image: "img.png",
      color: const Color(0XFF6F5EE2),
      title: "Ther Witcher",
      text: "Cross-Platform",
      starCount: 5),
  NewsSection(
      image: "img_1.png",
      color: const Color(0XFF77C164),
      title: "Halo 3",
      text: "Xbox Consoles",
      starCount: 4),
  NewsSection(
      image: "img.png",
      color: Colors.purple,
      title: "Witcher The",
      text: "Cross-Platform",
      starCount: 3),
];

//*******************************************************************************************************************

class PopularGamesSection {
  String image;
  Color color;
  String title;
  String text;
  int starCount;
  PopularGamesSection(
      {required this.image,
      required this.color,
      required this.title,
      required this.text,
      required this.starCount});
}

List<PopularGamesSection> populargameslist = [
  PopularGamesSection(
      image: "img_3.png",
      color: const Color(0XFF518CFE),
      title: "Breath of the Wild",
      text: "Nintendo",
      starCount: 5),
  PopularGamesSection(
      image: "img_4.png",
      color: const Color(0XFF77C164),
      title: "Animal Crossing",
      text: "Nintendo",
      starCount: 5),
  PopularGamesSection(
      image: "img_5.png",
      color: const Color(0XFFF56651),
      title: "Destir",
      text: "Cross-platform",
      starCount: 4),
  PopularGamesSection(
      image: "img_3.png",
      color: Colors.purple,
      title: "Title",
      text: "Cross-platform",
      starCount: 3)
];

//**************************************************************************************************************

class RecommendedClass {
  String image;
  Color color;
  String title;
  String text;
  int starCount;
  RecommendedClass(
      {required this.image,
      required this.color,
      required this.title,
      required this.text,
      required this.starCount});
}

List<RecommendedClass> recommendedlist = [
  RecommendedClass(
      image: "img_6.png",
      color: const Color(0XFFF56651),
      title: "Overwatch",
      text: "Cross-platform",
      starCount: 5),
  RecommendedClass(
      image: "img_7.png",
      color: const Color(0XFF518CFE),
      title: "The last of Us 2",
      text: "Playstation",
      starCount: 4),
  RecommendedClass(
      image: "img_8.png",
      color: const Color(0XFF77C164),
      title: "Minecraft",
      text: "Cross-platform",
      starCount: 4),
  RecommendedClass(
      image: "img_6.png",
      color: const Color(0XFFF56651),
      title: "Overwatch",
      text: "Cross-platform",
      starCount: 5),
];

//******************************************************************************************************

class ComingSoon {
  String image;
  Color color;
  String title;
  String text;
  int starCount;
  ComingSoon(
      {required this.image,
      required this.color,
      required this.title,
      required this.text,
      required this.starCount});
}

List<ComingSoon> comingsoonlist = [
  ComingSoon(
      image: "img_9.png",
      color: const Color(0XFF6F5EE2),
      title: "Little Nightmares 2",
      text: "Nitendo",
      starCount: 5),
  ComingSoon(
      image: "img_10.png",
      color: const Color(0XFF77C164),
      title: "Super Mario Bros",
      text: "Nintendo",
      starCount: 5),
  ComingSoon(
      image: "img_11.png",
      color: const Color(0XFF518CFE),
      title: "Gotham Knights",
      text: "Cross-platform",
      starCount: 4),
  ComingSoon(
      image: "img_6.png",
      color: const Color(0XFFF56651),
      title: "Overwatch",
      text: "Cross-platform",
      starCount: 5),
];

//***************************************************************************

class Genres {
  String image;
  Color color;
  String title;
  String text;

  Genres(
      {required this.image,
        required this.color,
        required this.title,
        required this.text,});
}

List<Genres> genreslist = [
  Genres(image: "img_12.png", color: const Color(0XFF77C164), title: "Action & Adventure", text: "Over 2,000 games"),
  Genres(image: "img_13.png", color: const Color(0XFF6F5EE2), title: "Roleplaying", text: "Over 3,200 games"),
];
