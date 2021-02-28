import 'package:desafio_galao/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() {
  runApp(DesafioGalaoApp());
}

class DesafioGalaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color.fromRGBO(102, 204, 255, 1),
          backgroundColor: Colors.white),
      home: HomePage(),
    );
  }
}
