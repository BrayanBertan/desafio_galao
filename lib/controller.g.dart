// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GalaoController on _GalaoController, Store {
  final _$galaoAtom = Atom(name: '_GalaoController.galao');

  @override
  double get galao {
    _$galaoAtom.reportRead();
    return super.galao;
  }

  @override
  set galao(double value) {
    _$galaoAtom.reportWrite(value, super.galao, () {
      super.galao = value;
    });
  }

  final _$listaTodosAtom = Atom(name: '_GalaoController.listaTodos');

  @override
  ObservableList<dynamic> get listaTodos {
    _$listaTodosAtom.reportRead();
    return super.listaTodos;
  }

  @override
  set listaTodos(ObservableList<dynamic> value) {
    _$listaTodosAtom.reportWrite(value, super.listaTodos, () {
      super.listaTodos = value;
    });
  }

  final _$listaCorretosAtom = Atom(name: '_GalaoController.listaCorretos');

  @override
  ObservableList<dynamic> get listaCorretos {
    _$listaCorretosAtom.reportRead();
    return super.listaCorretos;
  }

  @override
  set listaCorretos(ObservableList<dynamic> value) {
    _$listaCorretosAtom.reportWrite(value, super.listaCorretos, () {
      super.listaCorretos = value;
    });
  }

  final _$listaIncorretosAtom = Atom(name: '_GalaoController.listaIncorretos');

  @override
  ObservableList<dynamic> get listaIncorretos {
    _$listaIncorretosAtom.reportRead();
    return super.listaIncorretos;
  }

  @override
  set listaIncorretos(ObservableList<dynamic> value) {
    _$listaIncorretosAtom.reportWrite(value, super.listaIncorretos, () {
      super.listaIncorretos = value;
    });
  }

  final _$_GalaoControllerActionController =
      ActionController(name: '_GalaoController');

  @override
  void gerarTeste() {
    final _$actionInfo = _$_GalaoControllerActionController.startAction(
        name: '_GalaoController.gerarTeste');
    try {
      return super.gerarTeste();
    } finally {
      _$_GalaoControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
galao: ${galao},
listaTodos: ${listaTodos},
listaCorretos: ${listaCorretos},
listaIncorretos: ${listaIncorretos}
    ''';
  }
}
