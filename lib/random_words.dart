import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  @override
  RandomWordState createState() => RandomWordState();
}

class RandomWordState extends State<RandomWords> {
  WordPair mWordPair;

  WordPair getRandomWord() {
    return WordPair.random();
  }

  @override
  void initState() {
    super.initState();
    mWordPair = getRandomWord();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Words"),
      ),
      body: Center(
        child: Text(mWordPair.asPascalCase,
            style: TextStyle(
                fontFamily: "fonts/ComicNeue",
                fontStyle: FontStyle.italic,
                fontSize: 20.0)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            mWordPair = getRandomWord();
          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}