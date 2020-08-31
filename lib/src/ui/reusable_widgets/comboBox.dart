import 'package:flutter/material.dart';

class ComboBox extends StatefulWidget {
  final List<String> values;
  final String title;
  final Function onChanged;

  ComboBox({Key key, this.values, this.title, this.onChanged})
      : super(key: key);

  @override
  _ComboBoxState createState() => new _ComboBoxState();
}

class _ComboBoxState extends State<ComboBox> {
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentValue;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentValue = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String value in widget.values) {
      items.add(new DropdownMenuItem(value: value, child: new Text(value)));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Text(widget.title),
        new DropdownButton(
          value: _currentValue,
          items: _dropDownMenuItems,
          onChanged: changedDropDownItem,
        )
      ],
    );
  }

  void changedDropDownItem(String selectedValue) {
    widget.onChanged(selectedValue);
    setState(() {
      _currentValue = selectedValue;
    });
  }
}
