import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task7/Screens/HomeScreen.dart';

import 'Model/WordModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ( context) => WordModel(),
      child: MaterialApp(
        home:HomeScreen(),
      ),
    );
  }
}


