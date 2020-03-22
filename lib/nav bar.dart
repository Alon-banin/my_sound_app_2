/*
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Gym',
      home: RandomWords(),
    );
  }
}

class RandomWordsState extends State<RandomWords>{
  @override
  final List<WordPair> _suggestions = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My New List'),
      ),
      body: _buildsuggestions(),
    );
  }

  Widget _buildsuggestions() {
    return ListView.builder(
        itemBuilder: (BuildContext _contaxt, int i){
          if (i.isOdd){
            return Divider();
          }

          final indax = i ~/ 2;

          if(indax >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[indax]);
        }
    );
  }

  Widget _buildRow(WordPair pair){
    final bool alreadySaved = _saved.contains(pair);
    return ListTile(
        title: Text(
            pair.asPascalCase
        ),
        trailing: Icon(
          alreadySaved? Icons.favorite : Icons.favorite_border,
          color : alreadySaved? Colors.red : null,
        ),
        onTap: (){
          setState(() {
            if(alreadySaved){
              _saved.remove(pair);
            }
            else{
              _saved.add(pair);
            }
          });
        }
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
*/
