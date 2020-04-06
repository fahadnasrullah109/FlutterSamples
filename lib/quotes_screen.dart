import 'package:flutter/material.dart';
import 'package:flutterapp/Quote.dart';

class QuotesWidget extends StatefulWidget {
  @override
  _QuotesWidgetState createState() => _QuotesWidgetState();
}

class _QuotesWidgetState extends State<QuotesWidget> {
  List<Quote> quotes = [
    Quote(
        text:
            'I try to create sympathy for my characters, then turn the monsters loose.',
        author: 'Stephen King'),
    Quote(
        text: 'Prose is architecture, not interior decoration.',
        author: 'Ernest Hemingway'),
    Quote(
        text:
            'It’s none of their business that you have to learn to write. Let them think you were born that way.',
        author: 'Ernest Hemingway'),
    Quote(
        text:
            'Most writers regard the truth as their most valuable possession, and therefore are most economical in its use.',
        author: 'Mark Twain')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column (
          children:
            quotes.map((q) => QuoteWidget(quote: q)).toList(growable: false)
        ),
      )
    );
  }
}

class QuoteWidget extends StatelessWidget {
  final Quote quote;
  QuoteWidget({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              quote.author,
              style: TextStyle(fontSize: 15.0, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
