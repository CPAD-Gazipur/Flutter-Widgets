import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  final bool isTabView;
  const RandomWords({required this.isTabView, Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = <WordPair>{};
  static const _bigfont = TextStyle(fontSize: 16.0);

  void _savedSuggestion() {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (context) {
        final tiles = _saved.map((e) {
          return ListTile(
            title: Text(
              e.asPascalCase,
              style: _bigfont,
            ),
          );
        });
        final divided = tiles.isNotEmpty
            ? ListTile.divideTiles(
                tiles: tiles,
                context: context,
              ).toList()
            : <Widget>[];

        return Scaffold(
          appBar: AppBar(
            title: const Text('Saved Suggestions'),
          ),
          body: ListView(children: divided),
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _savedSuggestion,
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.list,
          color: Colors.grey,
        ),
      ),
      appBar: widget.isTabView
          ? null
          : AppBar(
              title: const Text('Saved Suggestions'),
            ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          if (index.isOdd) {
            return const Divider();
          }
          final i = index ~/ 2;
          if (i >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          final alreadySaved = _saved.contains(_suggestions[i]);
          return ListTile(
            title: Text(
              _suggestions[index].asPascalCase,
              style: _bigfont,
            ),
            trailing: Icon(
              alreadySaved ? Icons.favorite : Icons.favorite_border,
              color: alreadySaved ? Colors.red : null,
              semanticLabel:
                  alreadySaved ? 'Remove from favorites' : 'Add to favorites',
            ),
            onTap: () {
              setState(() {
                if (alreadySaved) {
                  _saved.remove(_suggestions[i]);
                } else {
                  _saved.add(_suggestions[i]);
                }
              });
            },
          );
        }),
        itemCount: 10,
      ),
    );
  }
}
