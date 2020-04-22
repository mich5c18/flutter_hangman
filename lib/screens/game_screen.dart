import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  static const String id = '/game_screen';
  final String data;

  GameScreen({this.data});

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int letter = 0;
  List<Widget> wordContainer = [];

  void processWord() {
    setState(() {
      for (int i = 0; i < widget.data.length; i++) {
        wordContainer.add(
          Text(
            widget.data[letter],
          ),
        );
        letter++;
//        print('i is $i');
//        print('letter is $letter');
      }
      print(wordContainer);
    });
  }

  @override
  void initState() {
    super.initState();
    processWord();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: wordContainer,
    );
  }
}
