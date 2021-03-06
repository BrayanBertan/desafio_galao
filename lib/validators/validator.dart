import 'package:desafio_galao/controllers/galao_controller.dart';

class Validator {
  String validateGalao(String param) {
    if (double.parse(param) == 0)  return 'Preencha o valor do galão';
      return null;

  }

  String validateGarrafas(String param) {
    if (int.parse(param) == 0)  return 'Crie garrafas';
      return null;
    }
  }

