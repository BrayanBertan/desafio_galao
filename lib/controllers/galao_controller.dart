import 'dart:math';

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
  ObservableList listaIncorretos = List().asObservable();

  @action
  void gerarTeste() {
    listaTodos.clear();
    listaCorretos.clear();
    listaIncorretos.clear();
    Random random = new Random();
    double minGalao = 5.0, maxGalao = 10.0;

    int minQuantidadeCopos = 3, maxQuantidadeCopos = 8;

    int quantidadeCopos =
        random.nextInt(maxQuantidadeCopos - minQuantidadeCopos) +
            minQuantidadeCopos;

    galao = double.parse(
        (random.nextDouble() * (maxGalao - minGalao) + minGalao)
            .toStringAsFixed(2));

    for (int i = 0; i < quantidadeCopos; i++) {
      listaTodos.add(gerarCopo(random, quantidadeCopos, galao));
    }
    calcularCopos();
  }

  double gerarCopo(Random random, int quantidadeCopos, double galao) {
    int minValorCopo = (galao / quantidadeCopos).round();
    double copo = double.parse(
        (random.nextDouble() * (minValorCopo * 3 - minValorCopo) + minValorCopo)
            .toStringAsFixed(2));

    return copo;
  }

  @action
  void calcularCopos() {
    List<double> listaTodosCopia = List();

    listaTodos.forEach((copo) {
      listaTodosCopia.add(copo);
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

    listaTodosCopia.forEach((copo) {
      if (copo <= galaoVolumeAtual) {
        listaCorretos.add(copo);
        galaoVolumeAtual -= copo;
      } else {
        listaIncorretos.add(copo);
      }
    });
  }
}
