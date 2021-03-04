import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../controllers/galao_controller.dart';

class ListaCopos extends StatefulWidget {
  GalaoController controller;
  Color color;
  String foto;
  String legenda;

  ListaCopos(this.controller, this.color, this.foto, this.legenda);
  @override
  _ListaCoposState createState() =>
      _ListaCoposState(controller, color, foto, legenda);
}

class _ListaCoposState extends State<ListaCopos> {
  GalaoController controller;
  Color color;
  String foto;
  String legenda;

  _ListaCoposState(this.controller, this.color, this.foto, this.legenda);
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        height: 100.0,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          Center(
              child: Column(
            children: [
              Text(
                legenda,
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              if (legenda.toUpperCase() == 'RESPOSTA')
                Text(
                  '(Sobra: ${controller.galaoVolumeAtual.toStringAsFixed(2)}L)',
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                )
            ],
          )),
          Row(
            children: controller.listaTodos.map((copo) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('images/$foto'),
                  Container(
                      child: Text(
                    '$copo L',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  )),
                  if (legenda.toUpperCase() == 'COPOS')
                    Container(
                      alignment: Alignment.topCenter,
                      child: IconButton(
                        onPressed: () {
                          controller.listaTodos.remove(copo);
                        },
                        icon: Icon(
                          Icons.delete_forever,
                          color: Colors.redAccent,
                        ),
                      ),
                    )
                ],
              );
            }).toList(),
          )
        ]),
      );
    });
  }
}
