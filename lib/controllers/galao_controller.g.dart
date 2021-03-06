// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'galao_controller.dart';

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

  final _$galaoVolumeAtualAtom =
      Atom(name: '_GalaoController.galaoVolumeAtual');

  @override
  double get galaoVolumeAtual {
    _$galaoVolumeAtualAtom.reportRead();
    return super.galaoVolumeAtual;
  }

  @override
  set galaoVolumeAtual(double value) {
    _$galaoVolumeAtualAtom.reportWrite(value, super.galaoVolumeAtual, () {
      super.galaoVolumeAtual = value;
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

  final _$buttonStateAtom = Atom(name: '_GalaoController.buttonState');

  @override
  bool get buttonState {
    _$buttonStateAtom.reportRead();
    return super.buttonState;
  }

  @override
  set buttonState(bool value) {
    _$buttonStateAtom.reportWrite(value, super.buttonState, () {
      super.buttonState = value;
    });
  }

  final _$_GalaoControllerActionController =
      ActionController(name: '_GalaoController');

  @override
  void setButtonState() {
    final _$actionInfo = _$_GalaoControllerActionController.startAction(
        name: '_GalaoController.setButtonState');
    try {
      return super.setButtonState();
    } finally {
      _$_GalaoControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGalao() {
    final _$actionInfo = _$_GalaoControllerActionController.startAction(
        name: '_GalaoController.setGalao');
    try {
      return super.setGalao();
    } finally {
      _$_GalaoControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void createGarrafa() {
    final _$actionInfo = _$_GalaoControllerActionController.startAction(
        name: '_GalaoController.createGarrafa');
    try {
      return super.createGarrafa();
    } finally {
      _$_GalaoControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calcular() {
    final _$actionInfo = _$_GalaoControllerActionController.startAction(
        name: '_GalaoController.calcular');
    try {
      return super.calcular();
    } finally {
      _$_GalaoControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
galao: ${galao},
galaoVolumeAtual: ${galaoVolumeAtual},
listaTodos: ${listaTodos},
listaCorretos: ${listaCorretos},
buttonState: ${buttonState}
    ''';
  }
}
