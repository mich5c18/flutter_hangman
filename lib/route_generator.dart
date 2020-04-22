import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';
import 'screens/word_choice_screen.dart';
import 'screens/game_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed.
    final args = settings.arguments;

    switch (settings.name) {
      case WelcomeScreen.id:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case WordChoiceScreen.id:
        return MaterialPageRoute(builder: (_) => WordChoiceScreen());
      case GameScreen.id:
        // Validation of correct data type.
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => GameScreen(
              data: args,
            ),
          );
        }
        // If args is not the correct type, return an error page.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement.
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('ERROR'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
