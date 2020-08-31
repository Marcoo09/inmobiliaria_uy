import 'package:flutter/material.dart';
import 'package:inmobiliariauy/src/core/view_models/new_register.dart';
import 'package:inmobiliariauy/src/locator.dart';
import 'package:inmobiliariauy/src/ui/reusable_widgets/comboBox.dart';
import 'package:stacked/stacked.dart';

class NewRegister extends StatefulWidget {
  @override
  _NewRegisterState createState() => new _NewRegisterState();
}

class _NewRegisterState extends State<NewRegister> {
  List<Step> steps = [
    Step(
      title: const Text('Step 1'),
      isActive: true,
      state: StepState.complete,
      content: ViewModelBuilder.reactive(
          builder: (context, NewRegisterViewModel viewModel, child) {
            return Column(
              children: <Widget>[
                ComboBox(
                  title: 'Modalidad',
                  values: ['Alquiler', 'Venta'],
                  onChanged: viewModel.setModality,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nombre del Dueño/a'),
                  onChanged: (newValue) => viewModel.setOwnerName(newValue),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Teléfono',
                  ),
                  onChanged: (newValue) => viewModel.setPhone(newValue),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-mail'),
                  onChanged: (newValue) => viewModel.setEmail(newValue),
                ),
                ComboBox(
                  title: 'Tipo de propiedad',
                  values: ['Casa', 'Apto', 'Local', 'Campo'],
                  onChanged: viewModel.setPropertyType,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Dirección'),
                  onChanged: (newValue) => viewModel.setAddress(newValue),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Barrio'),
                  onChanged: (newValue) => viewModel.setNeighborhood(newValue),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Padrón'),
                  onChanged: (newValue) => viewModel.setCensus(newValue),
                ),
                ComboBox(
                  title: 'Tipo',
                  values: ['PH', 'PU'],
                  onChanged: (newValue) => viewModel.setNeighborhood(newValue),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Precio USD (Venta)'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) => viewModel.setSalePrice(
                    int.parse(newValue),
                  ),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Precio por mes (Alquiler)'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) => viewModel.setRentalPrice(
                    int.parse(newValue),
                  ),
                ),
              ],
            );
          },
          viewModelBuilder: () => locator<NewRegisterViewModel>()),
    ),
    Step(
      isActive: false,
      state: StepState.editing,
      title: const Text('Step 2'),
      content: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                    decoration: InputDecoration(labelText: 'M2 Terreno'),
                    keyboardType: TextInputType.number),
              ),
              Expanded(
                child: ComboBox(title: '', values: ['M2', 'Ha']),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                    decoration: InputDecoration(labelText: 'M2 Edificados'),
                    keyboardType: TextInputType.number),
              ),
              Expanded(
                child: ComboBox(title: '', values: ['M2', 'Ha']),
              ),
            ],
          ),
          TextFormField(
              decoration: InputDecoration(labelText: 'Cantidad de Dormitorios'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Dormitorio 1 M2'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Dormitorio 2 M2'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Dormitorio 3 M2'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Cantidad de Baños'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Baño 1 M2'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Baño 2 M2'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Baño 3 M2'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Living M2'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Comedor M2'),
              keyboardType: TextInputType.number),
          ComboBox(title: 'Tipo de Cocina', values: ['I', 'K', 'O']),
          TextFormField(
              decoration: InputDecoration(labelText: 'Cocina M2'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Cantidad de Plantas'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Cochera M2'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Jardín M2'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Fondo M2'),
              keyboardType: TextInputType.number),
        ],
      ),
    ),
    Step(
      isActive: false,
      state: StepState.editing,
      title: const Text('Step 3'),
      content: Column(
        children: <Widget>[
          ComboBox(title: 'Estado', values: [
            'Reciclar',
            'Regular',
            'Bueno',
            'Muy Bueno',
            'Excelente'
          ]),
          TextFormField(
              decoration: InputDecoration(labelText: 'Año de construcción'),
              keyboardType: TextInputType.number),
          ComboBox(
              title: 'Disposición',
              values: ['Frente', 'Contrafrente', 'Lateral', 'Interno']),
          ComboBox(title: 'Orientación', values: [
            'Norte',
            'Sur',
            'Este',
            'Oeste',
            'NorOeste',
            'NorEste',
            'SurOeste',
            'SurEste'
          ]),
        ],
      ),
    ),
    Step(
      isActive: false,
      state: StepState.editing,
      title: const Text('Step 4'),
      content: Column(
        children: <Widget>[
          TextFormField(
              decoration: InputDecoration(labelText: 'Pisos del edificio'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Gastos comunes'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Impuestos'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Contribución'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Impuesto Primaria'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Tributos Domiciliarios'),
              keyboardType: TextInputType.number),
          TextFormField(
              decoration: InputDecoration(labelText: 'Tarifa de Saneamiento'),
              keyboardType: TextInputType.number),
        ],
      ),
    ),
    Step(
      isActive: false,
      state: StepState.editing,
      title: const Text('Step 5'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Otros'),
          ),
        ],
      ),
    ),
  ];
  int currentStep = 0;
  bool complete = false;

  next() {
    currentStep + 1 != steps.length
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Nuevo Registro'),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Stepper(
              controlsBuilder: (BuildContext context,
                  {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
                return Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: FlatButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: onStepContinue,
                        child: const Text('Avanzar'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: FlatButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: onStepCancel,
                        child: const Text('Anterior'),
                      ),
                    )
                  ],
                );
              },
              steps: steps,
              currentStep: currentStep,
              onStepContinue: next,
              onStepTapped: (step) => goTo(step),
              onStepCancel: cancel,
            ),
          ),
        ]));
  }
}
