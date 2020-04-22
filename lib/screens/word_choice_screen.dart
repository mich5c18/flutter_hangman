import 'package:flutter/material.dart';

import 'package:flutter_hangman/constants.dart';
import 'package:flutter_hangman/components/rounded_button.dart';
import 'package:flutter_hangman/screens/game_screen.dart';

class WordChoiceScreen extends StatefulWidget {
  static const String id = '/word_choice__screen';

  @override
  _WordChoiceScreenState createState() => _WordChoiceScreenState();
}

class _WordChoiceScreenState extends State<WordChoiceScreen> {
  String data;
//  int letter = 0;
//  List<Widget> wordContainer = [];
//
//  void processWord() {
//    setState(() {
//      for (int i = 0; i < word.length; i++) {
//        wordContainer.add(
//          Text(
//            word[letter],
//          ),
//        );
//        letter++;
////      print('i is $i');
////      print('letter is $letter');
//      }
////    print(wordContainer);
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            textAlign: TextAlign.center,
            onChanged: (value) {
              data = value;
            },
            decoration:
                kTextFieldDecoration.copyWith(hintText: 'Enter your word'),
          ),
          SizedBox(
            height: 8.0,
          ),
          RoundedButton(
            title: 'Play',
            colour: Colors.lightBlueAccent,
            onPressed: () {
//              setState(() {
//                processWord();
//              });

              Navigator.pushNamed(context, GameScreen.id, arguments: data);
            },
          ),
        ],
      ),
    );
  }
}
