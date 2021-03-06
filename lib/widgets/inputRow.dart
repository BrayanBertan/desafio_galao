import 'package:desafio_galao/controllers/galao_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class InputRowWidget extends StatefulWidget {
  String icon;
  String buttonText;
  String fieldText;
  Color color;
  Function funcao;
  GalaoController controller;
  Function validate;

  InputRowWidget(
      {@required this.icon,
      @required this.buttonText,
      @required this.fieldText,
      @required this.color,
      @required this.funcao,
      @required this.controller,
      @required this.validate});
  @override
  _InputRowWidgetState createState() => _InputRowWidgetState(
      icon, buttonText, fieldText, color, funcao, controller, validate);
}

class _InputRowWidgetState extends State<InputRowWidget> {
  String icon;
  String buttonText;
  String fieldText;
  Color color;
  Function funcao;
  GalaoController controller;
  Function validate;
  TextEditingController inputController;

  _InputRowWidgetState(this.icon, this.buttonText, this.fieldText, this.color,
      this.funcao, this.controller, this.validate) {
    inputController = buttonText.toUpperCase() == 'SALVAR'
        ? inputController = controller.galaoController
        : controller.garrafaController;
  }
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Row(
        children: [
          Text('${controller.galao}  ${controller.listaTodos.length}'),
          Expanded(
              child: TextFormField(
            onChanged: (value) {
              controller.setButtonState();
            },
            controller: inputController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Image.asset(
                'images/$icon',
                width: 10.0,
                height: 10.0,
              ),
              hintText: fieldText,
              hintStyle: TextStyle(color: Colors.black),
            ),
            validator: (value) {
              return validate(buttonText.toUpperCase() == 'SALVAR'
                  ? controller.galao.toStringAsFixed(2)
                  : controller.listaTodos.length.toString());
            },
          )),
          SizedBox(
            width: 15.0,
          ),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
                onPressed: inputController.text.trim().isEmpty
                    ? null
                    : () {
                        funcao();
                      },
                style: ElevatedButton.styleFrom(
                  primary: color, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: Text(buttonText)),
          ),
          Text(
            '${controller.buttonState}',
            style: TextStyle(color: Colors.transparent, fontSize: 1),
          ),
        ],
      );
    });
  }
}
