import 'package:flutter/material.dart';
import 'package:flutter_hangman/route_generator.dart';

import 'screens/welcome_screen.dart';
import 'screens/game_screen.dart';
import 'screens/word_choice_screen.dart';

void main() => runApp(Hangman());

class Hangman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
