import 'package:desafio_galao/controllers/galao_controller.dart';
import 'package:desafio_galao/widgets/inputRow.dart';
import 'package:desafio_galao/widgets/galao.dart';
import 'package:desafio_galao/widgets/lista_garrafas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

final controller = GalaoController();

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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InputRowWidget(
                'galao.png', 'Salvar', 'Digite o valor do galão', color, () {
              controller.setGalao();
            }, controller.galaoController),
            SizedBox(
              height: 15.0,
            ),
            InputRowWidget('garrafa_cheia.png', 'Adicionar',
                'Insira o valor para a garrafa', color, () {
              controller.createGarrafa();
            }, controller.garrafaController),
            GalaoWidget(controller),
            ListaGarrafas(controller, color, 'garrafa_cheia.png', 'Garrafas',controller.listaTodos),
            Container(
              margin: EdgeInsets.all(15.0),
              height: 50.0,
              child: RaisedButton(
                color: color,
                onPressed: () {
                  controller.calcular();
                },
                child: Text(
                  'Calcular',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListaGarrafas(controller, color, 'garrafa_vazia.png', 'Resposta',controller.listaCorretos),
          ],
        ),
      ),
    );
  }
}
