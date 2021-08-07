import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/widget/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Pokedex",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}