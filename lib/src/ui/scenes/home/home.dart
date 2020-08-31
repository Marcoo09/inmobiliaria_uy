import 'package:flutter/material.dart';
import 'package:inmobiliariauy/src/core/view_models/home.dart';
import 'package:inmobiliariauy/src/locator.dart';
import 'package:inmobiliariauy/src/ui/scenes/new_register/new_register.dart';
import 'package:stacked/stacked.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Acá va a haber un listado',
            ),
          ],
        ),
      ),
      floatingActionButton: ViewModelBuilder.nonReactive(
          builder: (context, HomeViewModel viewModel, child) {
            return FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewRegister()),
                );
              },
              tooltip: 'Nuevo registro',
              child: Icon(Icons.add),
            );
          },
          viewModelBuilder: () => locator<
              HomeViewModel>()), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
