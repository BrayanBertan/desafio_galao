import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'galao_controller.g.dart';

class GalaoController = _GalaoController with _$GalaoController;

abstract class _GalaoController with Store {
  @observable
  double galao = 0;

  @observable
  double galaoVolumeAtual = 0;

  @observable
  ObservableList listaTodos = List().asObservable();

  @observable
  ObservableList listaCorretos = List().asObservable();

  @observable
  bool buttonState = false;

  final galaoController = TextEditingController();
  final garrafaController = TextEditingController();


  @action
  void setButtonState() {
   buttonState  = !buttonState;
  }

  @action
  void setGalao() {
    galao = double.parse(galaoController.text.replaceAll(',', '.'));
    galaoController.text = '';
  }

  @action
  void createGarrafa() {
    listaTodos.add(double.parse(garrafaController.text));
    garrafaController.text = '';
  }

  @action
  void calcular() {
    List<double> listaTodosCopia = List();

    listaTodos.forEach((garrafa) {
      listaTodosCopia.add(garrafa);
    });

    listaTodosCopia.sort((a, b) {
      if (a > b) {
        return -1;
      } else if (a < b) {
        return 1;
      } else {
        return 0;
      }
    });
    galaoVolumeAtual = galao;

    listaTodosCopia.forEach((garrafa) {
      if (garrafa <= galaoVolumeAtual) {
        listaCorretos.add(garrafa);
        galaoVolumeAtual -= garrafa;
      }
    });
  }
}
