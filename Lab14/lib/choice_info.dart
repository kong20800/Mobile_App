import 'package:flutter/material.dart';
import 'marvel_hero.dart';

class ChoiceInfo extends StatefulWidget {
  const ChoiceInfo({Key? key}) : super(key: key);

  @override
  State<ChoiceInfo> createState() => _ChoiceInfoState();
}

class _ChoiceInfoState extends State<ChoiceInfo> {
  var prezInfo = {
   1: {
     "question": "What name of this hero",
     "title": "First question",
     "imgUrl": "https://wallpapercave.com/wp/wp7117156.jpg",

     "choice_1_ans": "Captain Marvel",
     "choice_1_check": false,

     "choice_2_ans": "Captain Hydra",
     "choice_2_check": false,

     "choice_3_ans": "Captain America",
     "choice_3_check": true,

     "choice_4_ans": "Captain Thailand",
     "choice_4_check": false,
   },
   2: {
     "question": "What name of this hero",
     "title": "Second question",
     "imgUrl": "https://img5.goodfon.com/original/1920x1080/d/98/invincible-iron-man-nepobedimyi-zheleznyi-chelovek-iron-man.jpg",

     "choice_1_ans": "Iron Man",
     "choice_1_check": true,

     "choice_2_ans": "Ultron",
     "choice_2_check": false,

     "choice_3_ans": "Vision",
     "choice_3_check": false,

     "choice_4_ans": "The Destroyer",
     "choice_4_check": false,
   },
   3: {
     "question": "What name of this hero",
     "title": "Third question",
     "imgUrl": "https://lumiere-a.akamaihd.net/v1/images/53fa042a43450af6e27a58db_e529dd0f.jpeg",

     "choice_1_ans": "Doctor Octopus",
     "choice_1_check": false,

     "choice_2_ans": "Doctor Manhattan",
     "choice_2_check": false,

     "choice_3_ans": "Doctor Doom",
     "choice_3_check": false,

     "choice_4_ans": "Doctor Strange",
     "choice_4_check": true,
   }
  };

  @override
  Widget build(BuildContext context) {
    return MarvelHero(num: 1, info: prezInfo);
  }
}
