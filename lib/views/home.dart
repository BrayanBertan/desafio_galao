import 'package:desafio_galao/controllers/galao_controller.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Observer(builder: (_) {
                    return ListView(
                        padding: EdgeInsets.zero,
                        children: controller.listaCorretos.map((copo) {
                          return Container(
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
                                  '${copo}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          );
                        }).toList());
                  }),
                ),
                Expanded(
                    child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: Colors.black, width: 3.0),
                    right: BorderSide(color: Colors.black, width: 3.0),
                    left: BorderSide(color: Colors.black, width: 3.0),
                  )),
                  child: Container(
                    margin: EdgeInsets.only(top: 50.0),
                    color: color,
                    child: Center(
                      child: Observer(
                          builder: (_) => Text(
                                '${controller.galao}',
                                style: TextStyle(color: Colors.white),
                              )),
                    ),
                  ),
                )),
                Container(
                  margin: EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Observer(builder: (_) {
                    return ListView(
                      padding: EdgeInsets.zero,
                      children: controller.listaIncorretos.map((copo) {
                        return Container(
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.zero,
                          margin: EdgeInsets.only(bottom: 5.0),
                          width: 80.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                bottom: BorderSide(
                                    color: Colors.redAccent, width: 3.0),
                                right: BorderSide(
                                    color: Colors.redAccent, width: 3.0),
                                left: BorderSide(
                                    color: Colors.redAccent, width: 3.0),
                              )),
                          child: Container(
                            margin: EdgeInsets.zero,
                            width: 80.0,
                            height: 100.0,
                            color: color,
                            child: Center(
                              child: Text(
                                '$copo',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  }),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(15.0),
              height: 120.0,
              child: Observer(builder: (_) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.listaTodos.length,
                  separatorBuilder: (BuildContext context, int index) => SizedBox(
                    width: 15.0,
                  ),
                  itemBuilder: (context, index) {
                    return controller.listaTodos == null
                        ? Container()
                        : Container(
                            alignment: Alignment.bottomCenter,
                            padding: EdgeInsets.zero,
                            margin: EdgeInsets.only(bottom: 5.0),
                            width: 80.0,
                            decoration: BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                  color: Colors.yellowAccent, width: 3.0),
                              right: BorderSide(
                                  color: Colors.yellowAccent, width: 3.0),
                              left: BorderSide(
                                  color: Colors.yellowAccent, width: 3.0),
                            )),
                            child: Container(
                              margin: EdgeInsets.zero,
                              width: 80.0,
                              height: 80.0,
                              color: color,
                              child: Center(
                                child: Text(
                                  '${controller.listaTodos[index]}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          );
                  },
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildLegenda(Colors.yellowAccent, 'Todos'),
                buildLegenda(Colors.greenAccent, 'Resposta'),
                buildLegenda(Colors.redAccent, 'Resto'),
                Observer(builder: (_) {
                  return Text(
                      'Sobra: ${(controller.galaoVolumeAtual).toStringAsFixed(2)}');
                }),
              ],
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              height: 50.0,
              child: RaisedButton(
                color: color,
                onPressed: () {
                  controller.gerarTeste();
                },
                child: Text(
                  'Gerar teste',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLegenda(Color cor, String texto) {
    return Container(
      width: 80.0,
      height: 50.0,
      color: cor,
      child: Center(
        child: Text(
          texto,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
