import 'package:flutter/material.dart';
import 'Quote.dart';
import 'quote_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote App',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Awesome Quote')),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: QuoteList(),
      ),
    );
  }
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> list = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Father',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely poor and be never simple'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: list
          .map((e) => QuoteCard(
              quote: e,
              delete: () {
                setState(() {
                  list.remove(e);
                });
              },
              edit: () {
                setState(() {});
              }))
          .toList(),
    );
  }
}
