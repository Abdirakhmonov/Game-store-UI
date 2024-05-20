import 'package:flutter/material.dart';

class PcTrending {
  String title;
  String text;
  int starcount;
  String image;
  Color color;

  PcTrending(
      {required this.title,
      required this.text,
      required this.starcount,
      required this.image,
      required this.color});
}

List<PcTrending> trendinglist = [
  PcTrending(
      title: "Half-Life 3",
      text: "PC Exclusive",
      starcount: 5,
      image: "img.png",
      color: Color(0XFF518CFE)),
  PcTrending(
      title: "Fortnite",
      text: "Cross-Platform",
      starcount: 3,
      image: "img_1.png",
      color: Color(0XFFF56651)),
  PcTrending(
      title: "Half-Life 6",
      text: "PC Exclusive",
      starcount: 4,
      image: "img.png",
      color: Color(0XFF518CFB)),
];

//**********************************************************************************************

class NewOnPc {
  String title;
  String text;
  int starcount;
  String image;
  Color color;

  NewOnPc(
      {required this.title,
        required this.text,
        required this.starcount,
        required this.image,
        required this.color});
}
List<NewOnPc> newonpclist = [
  NewOnPc(
      title: "Fallout 5",
      text: "Cross-Platform",
      starcount: 5,
      image: "img_2.png",
      color: const Color(0XFFF56651)),
  NewOnPc(
      title: "GTA 6",
      text: "PC Exclusive",
      starcount: 5,
      image: "img_3.png",
      color: const Color(0XFF518CFE)),
  NewOnPc(
      title: "Sekiro: Shadows",
      text: "Cross-platform",
      starcount: 4,
      image: "img_4.png",
      color: const Color(0XFF77C164)),
];
////************************************************************************************************

class FpsGames {
  String title;
  String text;
  int starcount;
  String image;
  Color color;

  FpsGames(
      {required this.title,
        required this.text,
        required this.starcount,
        required this.image,
        required this.color});
}
List<FpsGames> fpsgameslist = [
  FpsGames(
      title: "Overwatch",
      text: "Cross-Platform",
      starcount: 5,
      image: "img_5.png",
      color: const Color(0XFF6F5EE2)),
  FpsGames(
      title: "Borderlands 2",
      text: "Cross-Platform",
      starcount: 4,
      image: "img_6.png",
      color: const Color(0XFF77C164)),
  FpsGames(
      title: "Modern Warfare",
      text: "Cross-platform",
      starcount: 4,
      image: "img_7.png",
      color: const Color(0XFF518CFE)),
];

//***********************************************************************************

class RGPsection {
  String title;
  String text;
  int starcount;
  String image;
  Color color;

  RGPsection(
      {required this.title,
        required this.text,
        required this.starcount,
        required this.image,
        required this.color});
}
List<RGPsection> rgplist = [
  RGPsection(
      title: "Divinity 2",
      text: "PC Exclusive",
      starcount: 4,
      image: "img_9.png",
      color: const Color(0XFF518CFE)),
  RGPsection(
      title: "Mass Effect",
      text: "Cross-Platform",
      starcount: 5,
      image: "img_10.png",
      color: const Color(0XFFF56651)),
  RGPsection(
      title: "Diablo",
      text: "Cross-platform",
      starcount: 4,
      image: "img_11.png",
      color: const Color(0XFF6F5EE2)),
];

//******************************************************************************

class Action {
  String title;
  String text;
  int starcount;
  String image;
  Color color;

  Action(
      {required this.title,
        required this.text,
        required this.starcount,
        required this.image,
        required this.color});
}
List<Action> actionlist = [
  Action(
      title: "The Walking Dead",
      text: "PC Exclusive",
      starcount: 5,
      image: "img_12.png",
      color: const Color(0XFF6F5EE2)),
  Action(
      title: "Path of Exile",
      text: "PC Exclusive",
      starcount: 4,
      image: "img_13.png",
      color: const Color(0XFF518CFE)),
  Action(
      title: "Monster Hunter",
      text: "PC Exclusive",
      starcount: 4,
      image: "img_14.png",
      color: const Color(0XFF77C164)),
];

//*********************************************************************************

class Puzzle {
  String title;
  String text;
  int starcount;
  String image;
  Color color;

  Puzzle(
      {required this.title,
        required this.text,
        required this.starcount,
        required this.image,
        required this.color});
}
List<Puzzle> puzzlelist = [
  Puzzle(
      title: "Human: Fall Flat",
      text: "PC Exclusive",
      starcount: 4,
      image: "img_15.png",
      color: const Color(0XFF77C164)),
  Puzzle(
      title: "Fez",
      text: "PC Exclusive",
      starcount: 4,
      image: "img_16.png",
      color: const Color(0XFFF56651)),
  Puzzle(
      title: "Resident Evil 2",
      text: "Cross-platform",
      starcount: 4,
      image: "img_17.png",
      color: const Color(0XFF6F5EE2)),
];

//*************************************************************

class MultiPlayer {
  String title;
  String text;
  int starcount;
  String image;
  Color color;

  MultiPlayer(
      {required this.title,
        required this.text,
        required this.starcount,
        required this.image,
        required this.color});
}
List<MultiPlayer> multiplayerlist = [
  MultiPlayer(
      title: "Overcooked 2",
      text: "PC Exclusive",
      starcount: 3,
      image: "img_18.png",
      color: const Color(0XFFF56651)),
  MultiPlayer(
      title: "Injustice 2",
      text: "Cross-platform",
      starcount: 4,
      image: "img_19.png",
      color: const Color(0XFF518CFE)),
  MultiPlayer(
      title: "Dota 2",
      text: "PC Exclusive",
      starcount: 3,
      image: "img_20.png",
      color: const Color(0XFF77C164)),
];
//***********************************************************************88

class Simulation {
  String title;
  String text;
  int starcount;
  String image;
  Color color;

  Simulation(
      {required this.title,
        required this.text,
        required this.starcount,
        required this.image,
        required this.color});
}
List<Simulation> sumulationlist = [
  Simulation(
      title: "The Sims 4",
      text: "Cross-platform",
      starcount: 4,
      image: "img_21.png",
      color: const Color(0XFFF518CFE)),
  Simulation(
      title: "Stardew Valley",
      text: "Cross-platform",
      starcount: 5,
      image: "img_22.png",
      color: const Color(0XFF518CFE)),
  Simulation(
      title: "Farming Simulator",
      text: "PC Exclusive",
      starcount: 4,
      image: "img_23.png",
      color: const Color(0XFF77C164)),
];

//********************************************************************************************************

class Horror {
  String title;
  String text;
  int starcount;
  String image;
  Color color;

  Horror(
      {required this.title,
        required this.text,
        required this.starcount,
        required this.image,
        required this.color});
}
List<Horror> horrorlist = [
  Horror(
      title: "Amnesia",
      text: "PC Exclusive",
      starcount: 4,
      image: "img_24.png",
      color: const Color(0XFFF56651)),
  Horror(
      title: "Resident Evil 7",
      text: "Cross-platform",
      starcount: 5,
      image: "img_25.png",
      color: const Color(0XFF518CFE)),
  Horror(
      title: "Minecraft",
      text: "Cross-platform",
      starcount: 4,
      image: "img_26.png",
      color: const Color(0XFF77C164)),
];