import 'package:desafio_galao/widgets/lista_garrafas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../controllers/galao_controller.dart';

class GalaoWidget extends StatefulWidget {
  GalaoController controller;

  GalaoWidget(this.controller);
  @override
  _GalaoWidgetState createState() => _GalaoWidgetState(controller);
}

class _GalaoWidgetState extends State<GalaoWidget> {
  GalaoController controller;

  _GalaoWidgetState(this.controller);
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('images/galao.png'),
            Container(
                child: Text(
              '${controller.galao}L',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ))
          ],
        ),
      );
    });
  }
}
