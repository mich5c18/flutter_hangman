import 'package:flutter/material.dart';

import 'package:flutter_hangman/components/rounded_button.dart';
import 'package:flutter_hangman/screens/game_screen.dart';
import 'package:flutter_hangman/screens/word_choice_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = '/welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//      Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Chose Word',
              colour: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, WordChoiceScreen.id);
              },
            ),
//            RoundedButton(
//              title: 'Register',
//              colour: Colors.blueAccent,
//              onPressed: () {
//                Navigator.pushNamed(context, RegistrationScreen.id);
//              },
//            ),
          ],
        ),
      ),
    );
  }
}
