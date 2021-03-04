import 'package:flutter/material.dart';

class InputRowWidget extends StatefulWidget {
  String icon;
  String buttonText;
  String fieldText;
  Color color;

  InputRowWidget(this.icon, this.buttonText, this.fieldText, this.color);
  @override
  _InputRowWidgetState createState() =>
      _InputRowWidgetState(icon, buttonText, fieldText, color);
}

class _InputRowWidgetState extends State<InputRowWidget> {
  String icon;
  String buttonText;
  String fieldText;
  Color color;

  _InputRowWidgetState(this.icon, this.buttonText, this.fieldText, this.color);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
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
        )),
        SizedBox(
          width: 15.0,
        ),
        SizedBox(
          height: 50.0,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: color, // background
                onPrimary: Colors.white, // foreground
              ),
              child: Text(buttonText)),
        )
      ],
    );
  }
}
