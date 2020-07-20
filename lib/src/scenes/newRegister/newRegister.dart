import 'package:flutter/material.dart';

class NewRegister extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro Nuevo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Acá va a haber un formulario',
            ),
          ],
        ),
      ),
    );
  }
}