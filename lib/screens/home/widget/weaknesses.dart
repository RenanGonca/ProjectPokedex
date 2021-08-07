import 'package:flutter/cupertino.dart';
import 'package:pokedex/screens/home/widget/pill.dart';

class Weaknesses extends StatelessWidget {
  final List<String> _weaknesses;

  Weaknesses(this._weaknesses);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 30,
            ),
            child: Text(
              "Fraquezas",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Pill(
                color: Color(0xFF01579B),
                text: "Água",
              ),
              Pill(
                color: Color(0xFFFFD600),
                text: "Terra",
              ),
              Pill(
                color: Color(0xFF827717),
                text: "Rocha",
              ),
            ],
          ),
        ],
      ),
    );
  }
}