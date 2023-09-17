import 'package:english_words/src/word_pair.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task7/Model/WordModel.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myWordModel=context.watch<WordModel>();
    var myRandomWord=myWordModel.Word;
    var myFavorite=myWordModel.favorites;



    IconData myIcon;
    if(myFavorite.contains(myRandomWord)){
      myIcon=Icons.favorite;
    }else{
      myIcon=Icons.favorite_border;
    }
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Random Word : "),
            SizedBox(height: 15,),
            RandomTextDesign(myRandomWord: myRandomWord),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    onPressed: (){
                      myWordModel.toggleFavorite();
                    },
                    icon: Icon(myIcon),
                    label: Text("Like")),
                SizedBox(width: 15,),

                ElevatedButton(
                    onPressed: (){
                      myWordModel.getNext();
                    },
                    child: Text("Next")),
              ],
            )


          ],
        ),
      )
    );
  }
}

class RandomTextDesign extends StatelessWidget {
  const RandomTextDesign({
    Key? key,
    required this.myRandomWord,
  }) : super(key: key);

  final WordPair myRandomWord;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.cyanAccent,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(myRandomWord.asLowerCase),
        ));
  }
}
