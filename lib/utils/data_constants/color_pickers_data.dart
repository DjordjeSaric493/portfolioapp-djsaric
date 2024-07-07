import 'package:flutter/material.dart';
import 'package:portfolioapp_test/model/colors_model.dart';

List<ColorsModel> fancyColorPalette = [
  //don't forget to import flutter_material.dart in ColorsModel
  ColorsModel(
    color: const Color.fromARGB(255, 76, 119, 175), //icon color
    gradient: const LinearGradient(colors: [
      Color.fromARGB(255, 76, 119, 175),
      const Color.fromARGB(255, 0, 204, 255)
    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
    svgImgPath: 'assets/images/iManifestSea.svg',
  ),
  ColorsModel(
    color: Colors.redAccent,
    gradient: const LinearGradient(
        colors: [Colors.redAccent, Colors.orange],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
    svgImgPath: 'assets/images/iManifestSea.svg',
  ),
  ColorsModel(
    color: const Color.fromARGB(255, 153, 1, 173),
    gradient: const LinearGradient(colors: [
      Color.fromARGB(255, 153, 1, 173),
      Color.fromARGB(255, 130, 90, 204)
    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
    svgImgPath: 'assets/images/iManifestSea.svg',
  ),
  ColorsModel(
    color: const Color.fromARGB(255, 1, 33, 173),
    gradient: const LinearGradient(colors: [
      Color.fromARGB(255, 1, 33, 173),
      Color.fromARGB(255, 32, 64, 209),
    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
    svgImgPath: 'assets/images/iManifestSea.svg',
  ),
];
