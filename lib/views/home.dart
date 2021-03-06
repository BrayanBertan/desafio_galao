import 'package:desafio_galao/controllers/galao_controller.dart';
import 'package:desafio_galao/validators/validator.dart';
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

class _HomePageState extends State<HomePage> with Validator {
  final _formKey = GlobalKey<FormState>();
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
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    InputRowWidget(
                        icon: 'galao.png',
                        buttonText: 'Salvar',
                        fieldText: 'Digite o valor do galão',
                        color: color,
                        funcao: () {
                          controller.setGalao();
                        },
                        controller: controller,
                        validate: validateGalao),
                    SizedBox(
                      height: 15.0,
                    ),
                    InputRowWidget(
                        icon: 'garrafa_cheia.png',
                        buttonText: 'Adicionar',
                        fieldText: 'Insira um valor para a garrafa',
                        color: color,
                        funcao: () {
                          controller.createGarrafa();
                        },
                        controller: controller,
                        validate: validateGarrafas),
                  ],
                )),
            SizedBox(
              height: 15.0,
            ),
            GalaoWidget(controller),
            ListaGarrafas(controller, color, 'garrafa_cheia.png', 'Garrafas',
                controller.listaTodos),
            Container(
              margin: EdgeInsets.all(15.0),
              height: 50.0,
              child: RaisedButton(
                color: color,
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    controller.calcular();
                  }
                },
                child: Text(
                  'Calcular',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListaGarrafas(controller, color, 'garrafa_vazia.png', 'Resposta',
                controller.listaCorretos),
          ],
        ),
      ),
    );
  }
}
