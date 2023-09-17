import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';


class WordModel extends ChangeNotifier{
  var Word=WordPair.random();
  var favorites=<WordPair>[];


  void getNext(){
    Word=WordPair.random();
    notifyListeners();

}
void toggleFavorite(){
    if(favorites.contains(Word)){
      favorites.remove(Word);
    }else{
      favorites.add(Word);
    }
    notifyListeners();
}
}