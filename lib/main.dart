import 'package:flutter/material.dart';

void main() {
  runApp(DesafioGalaoApp());
}

class DesafioGalaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color.fromRGBO(50, 155, 168, 1)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Desafio Galão',
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
