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
      content: ViewModelBuilder.reactive(
        builder: (context, NewRegisterViewModel viewModel, child) {
          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: '${viewModel.groundMetric} Terreno'),
                      keyboardType: TextInputType.number,
                      onChanged: (newValue) =>
                          viewModel.setM2Ground(int.parse(newValue)),
                    ),
                  ),
                  Expanded(
                    child: ComboBox(
                      title: '',
                      values: ['M2', 'Ha'],
                      onChanged: viewModel.setGroundMetric,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: '${viewModel.builtMetric} Edificados'),
                      keyboardType: TextInputType.number,
                      onChanged: (newValue) =>
                          viewModel.setM2Built(int.parse(newValue)),
                    ),
                  ),
                  Expanded(
                    child: ComboBox(
                      title: '',
                      values: ['M2', 'Ha'],
                      onChanged: viewModel.setBuiltMetric,
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Cantidad de Dormitorios',
                ),
                keyboardType: TextInputType.number,
                onChanged: (newValue) =>
                    viewModel.setQuantityOfBedrooms(int.parse(newValue)),
              ),
              Visibility(
                visible: viewModel.quantityOfBedrooms >= 1,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Dormitorio 1 M2'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setM2OfBedroom(0, int.parse(newValue)),
                ),
              ),
              Visibility(
                visible: viewModel.quantityOfBedrooms >= 2,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Dormitorio 2 M2'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setM2OfBedroom(1, int.parse(newValue)),
                ),
              ),
              Visibility(
                visible: viewModel.quantityOfBedrooms >= 3,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Dormitorio 3 M2'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setM2OfBedroom(2, int.parse(newValue)),
                ),
              ),
              Visibility(
                visible: viewModel.quantityOfBedrooms >= 4,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Dormitorio 4 M2'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setM2OfBedroom(3, int.parse(newValue)),
                ),
              ),
              Visibility(
                visible: viewModel.quantityOfBedrooms >= 5,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Dormitorio 5 M2'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setM2OfBedroom(4, int.parse(newValue)),
                ),
              ),
              Visibility(
                visible: viewModel.quantityOfBedrooms >= 6,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Dormitorio 6 M2'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setM2OfBedroom(5, int.parse(newValue)),
                ),
              ),
              Visibility(
                visible: viewModel.quantityOfBedrooms >= 7,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Dormitorio 7 M2'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setM2OfBedroom(6, int.parse(newValue)),
                ),
              ),
              Visibility(
                visible: viewModel.quantityOfBedrooms >= 8,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Dormitorio 8 M2'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setM2OfBedroom(7, int.parse(newValue)),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Cantidad de Baños'),
                keyboardType: TextInputType.number,
                onChanged: (newValue) =>
                    viewModel.setQuantityOfBathrooms(int.parse(newValue)),
              ),
              Visibility(
                visible: viewModel.quantityOfBathrooms >= 1,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Baño 1 M2'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setM2OfBathroom(0, int.parse(newValue)),
                ),
              ),
              Visibility(
                visible: viewModel.quantityOfBathrooms >= 2,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Baño 2 M2'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setM2OfBathroom(1, int.parse(newValue)),
                ),
              ),
              Visibility(
                visible: viewModel.quantityOfBathrooms >= 3,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Baño 3 M2'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setM2OfBathroom(2, int.parse(newValue)),
                ),
              ),
              Visibility(
                visible: viewModel.quantityOfBathrooms >= 4,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Baño 4 M2'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setM2OfBathroom(3, int.parse(newValue)),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Living M2'),
                keyboardType: TextInputType.number,
                onChanged: (newValue) =>
                    viewModel.setM2OfLiving(int.parse(newValue)),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Comedor M2'),
                keyboardType: TextInputType.number,
                onChanged: (newValue) =>
                    viewModel.setM2OfDinningRoom(int.parse(newValue)),
              ),
              ComboBox(
                title: 'Tipo de Cocina',
                values: ['I', 'K', 'O'],
                onChanged: (newValue) => viewModel.setTypeOfKitchen,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Cocina M2'),
                keyboardType: TextInputType.number,
                onChanged: (newValue) =>
                    viewModel.setM2OfKitchen(int.parse(newValue)),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Cantidad de Plantas'),
                keyboardType: TextInputType.number,
                onChanged: (newValue) =>
                    viewModel.setQuantityOfFloors(int.parse(newValue)),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Cochera M2'),
                keyboardType: TextInputType.number,
                onChanged: (newValue) =>
                    viewModel.setM2OfGarage(int.parse(newValue)),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Jardín M2'),
                keyboardType: TextInputType.number,
                onChanged: (newValue) =>
                    viewModel.setM2OfFrontGarden(int.parse(newValue)),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Fondo M2'),
                keyboardType: TextInputType.number,
                onChanged: (newValue) =>
                    viewModel.setM2OfBackGarden(int.parse(newValue)),
              ),
            ],
          );
        },
        viewModelBuilder: () => locator<NewRegisterViewModel>(),
      ),
    ),
    Step(
        isActive: false,
        state: StepState.editing,
        title: const Text('Step 3'),
        content: ViewModelBuilder.reactive(
          builder: (context, NewRegisterViewModel viewModel, child) {
            return Column(
              children: <Widget>[
                ComboBox(
                  title: 'Estado',
                  values: [
                    'Reciclar',
                    'Regular',
                    'Bueno',
                    'Muy Bueno',
                    'Excelente'
                  ],
                  onChanged: viewModel.setHouseState,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Año de construcción'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setYearOfConstruction(int.parse(newValue)),
                ),
                ComboBox(
                  title: 'Disposición',
                  values: ['Frente', 'Contrafrente', 'Lateral', 'Interno'],
                  onChanged: viewModel.setHouseLayout,
                ),
                ComboBox(
                  title: 'Orientación',
                  values: [
                    'Norte',
                    'Sur',
                    'Este',
                    'Oeste',
                    'NorOeste',
                    'NorEste',
                    'SurOeste',
                    'SurEste'
                  ],
                  onChanged: viewModel.setHouseOrientation,
                ),
              ],
            );
          },
          viewModelBuilder: () => locator<NewRegisterViewModel>(),
        )),
    Step(
        isActive: false,
        state: StepState.editing,
        title: const Text('Step 4'),
        content: ViewModelBuilder.reactive(
          builder: (context, NewRegisterViewModel viewModel, child) {
            return Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Pisos del edificio'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setBuildingFloors(int.parse(newValue)),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Gastos comunes'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setCommonExpenses(double.parse(newValue)),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Impuestos'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setTaxes(double.parse(newValue)),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Contribución'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setContribution(double.parse(newValue)),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Impuesto Primaria'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setPrimaryTaxes(double.parse(newValue)),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Tributos Domiciliarios'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setDomiciliaryTaxes(double.parse(newValue)),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Tarifa de Saneamiento'),
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) =>
                      viewModel.setSanitationFee(double.parse(newValue)),
                ),
              ],
            );
          },
          viewModelBuilder: () => locator<NewRegisterViewModel>(),
        )),
    Step(
        isActive: false,
        state: StepState.editing,
        title: const Text('Step 5'),
        content: ViewModelBuilder.reactive(
          builder: (context, NewRegisterViewModel viewModel, child) {
            return Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Otros'),
                  onChanged: (newValue) => viewModel.setOthers(newValue),
                ),
              ],
            );
          },
          viewModelBuilder: () => locator<NewRegisterViewModel>(),
        )),
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
