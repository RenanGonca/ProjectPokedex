import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/screens/home/widget/weaknesses.dart';
import 'details.dart';

class HomePage extends StatelessWidget {

  final Pokemon _charmander = Pokemon(
    name: "Charmander",
    photo: "assets/3.0x/charmander.png",
    description:
        "Tem preferencias por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda",
    type: "Fogo",
    ability: "Chama",
    height: 0.6,
    weight: 8.5 ,
    weaknesses: [
      "Água",
      "Terra",
      "Rocha",
    ],
  );

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Charmander #004", style: TextStyle(fontWeight: FontWeight.bold,
        ),
        ),
        leading: Image.asset("assets/logo.png", 
        ),
      ),
        body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 5,
        ),
        child: Column(
          children: [
            Image.asset(
              _charmander.photo,
              width: 100,
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: Text(
                _charmander.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Details(_charmander),
            Weaknesses(_charmander.weaknesses),
          ],
        ),
      ),
    );
  }
}