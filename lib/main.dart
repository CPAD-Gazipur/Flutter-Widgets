import 'package:flutter/material.dart';
import 'package:flutter_widgets/screen/home.dart';

void main() {
  runApp(MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
  ),
  ),
  home: const Home(),
  ));
}

