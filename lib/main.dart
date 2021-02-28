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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Desafio Galão',
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Center(
                      child: Text('Corretos'),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.only(bottom: 5.0),
                      width: 80.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                                color: Colors.greenAccent, width: 3.0),
                            right: BorderSide(
                                color: Colors.greenAccent, width: 3.0),
                            left: BorderSide(
                                color: Colors.greenAccent, width: 3.0),
                          )),
                      child: Container(
                        margin: EdgeInsets.zero,
                        width: 80.0,
                        height: 100.0,
                        color: color,
                        child: Center(
                          child: Text(
                            '2.5L',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                children: [
                  Text('Galão'),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Colors.black, width: 3.0),
                          right: BorderSide(color: Colors.black, width: 3.0),
                          left: BorderSide(color: Colors.black, width: 3.0),
                        )),
                    child: Container(
                      margin: EdgeInsets.zero,
                      width: 80.0,
                      height: MediaQuery.of(context).size.height * 0.4,
                      color: color,
                      child: Center(
                        child: Text(
                          '5.0L',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )),
              Container(
                margin: EdgeInsets.all(5.0),
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Center(
                      child: Text('Incorretos'),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.only(bottom: 5.0),
                      width: 80.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom:
                                BorderSide(color: Colors.redAccent, width: 3.0),
                            right:
                                BorderSide(color: Colors.redAccent, width: 3.0),
                            left:
                                BorderSide(color: Colors.redAccent, width: 3.0),
                          )),
                      child: Container(
                        margin: EdgeInsets.zero,
                        width: 80.0,
                        height: 100.0,
                        color: color,
                        child: Center(
                          child: Text(
                            '1.5L',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(15.0),
            height: 120.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Center(
                  child: Text('Todos'),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.only(bottom: 5.0),
                  width: 80.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom:
                            BorderSide(color: Colors.yellowAccent, width: 3.0),
                        right:
                            BorderSide(color: Colors.yellowAccent, width: 3.0),
                        left:
                            BorderSide(color: Colors.yellowAccent, width: 3.0),
                      )),
                  child: Container(
                    margin: EdgeInsets.zero,
                    width: 80.0,
                    height: 80.0,
                    color: color,
                    child: Center(
                      child: Text(
                        '1.5L',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.only(bottom: 5.0),
                  width: 80.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom:
                            BorderSide(color: Colors.yellowAccent, width: 3.0),
                        right:
                            BorderSide(color: Colors.yellowAccent, width: 3.0),
                        left:
                            BorderSide(color: Colors.yellowAccent, width: 3.0),
                      )),
                  child: Container(
                    margin: EdgeInsets.zero,
                    width: 80.0,
                    height: 80.0,
                    color: color,
                    child: Center(
                      child: Text(
                        '1.5L',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text('Sobra:'),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            height: 50.0,
            child: RaisedButton(
              color: color,
              onPressed: () {},
              child: Text(
                'Gerar teste',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
