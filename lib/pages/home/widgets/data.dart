import 'package:flutter/rendering.dart';

List<String> moreLiveSteamTitle = [
  "All",
  "Soccer",
  "Fotbal",
  "Gulf",
  "Tennis",
  "Basketball"
];

List<String> listMenImage = [
  "assets/2s.png",
  "assets/3s.png",
  "assets/4s.png",
  "assets/5s.png",
  "assets/6s.png",
  "assets/7s.png"
];

class MoreLivesModel {
  final String imageAddres;
  final String title;
  final String description;
  MoreLivesModel(
      {required this.imageAddres,
      required this.title,
      required this.description});
}

List<MoreLivesModel> listMoreLivesModel = [
  MoreLivesModel(
      imageAddres: "assets/1s.png",
      title: 'CHAMPIONS LEAGUE',
      description: 'Man United vs Chelsea'),
  MoreLivesModel(
      imageAddres: "assets/7s.png",
      title: 'BASKETBALL',
      description: 'Our Planet')
];
