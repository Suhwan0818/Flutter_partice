import 'package:flutter/material.dart';

void main() => runApp(FontPage());

class FontInfo {
  String inputString;
  Color color;
  double size;

  bool isUnderlined = false;
  bool isBold = false;
  bool isItalic = false;

  FontInfo({
    required this.inputString,
    this.color = Colors.black,
    this.size = 20,
  });
}

class FontPage extends StatefulWidget {
  const FontPage({super.key});

  @override
  State<FontPage> createState() => _FontPageState();
}

class _FontPageState extends State<FontPage> {
  FontInfo _font = FontInfo(inputString: "Hello world");
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  int _radioGroupValue = 1;

  void _updateFont() {
    setState(() {
      if (_formStateKey.currentState!.validate()) {
        _formStateKey.currentState!.save();
      }
    });
  }

  Map<String, Color> colorMap = {
    "Black": Colors.black,
    "Green": Colors.green,
    "Yellow": Colors.yellow,
    "Red": Colors.red,
  };

  void _radioOnChanged(var radioValue) {
    _radioGroupValue = radioValue as int;
    _font.size = 20.0 * radioValue;
    _updateFont();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Font Page")),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              TextContainer(
                inputString: _font.inputString,
                fontSize: _font.size,
                fontColor: _font.color,
                isUnderlined: _font.isUnderlined,
                isBold: _font.isBold,
                isItalic: _font.isItalic,
              ),
              Form(
                key: _formStateKey,
                autovalidateMode: AutovalidateMode.always,
                onChanged: _updateFont,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Hello Sean', labelText: 'Text'),
                    validator: (value) =>
                        value!.isEmpty ? "Text Required" : null,
                    onSaved: (String? value) => _font.inputString = value!,
                    maxLength: 15,
                  ),
                ),
              ),
              Row(
                children: [
                  RadioMenuButton<int>(
                    value: 1,
                    groupValue: _radioGroupValue,
                    onChanged: _radioOnChanged,
                    child: Text("Small"),
                  ),
                  RadioMenuButton<int>(
                      value: 2,
                      groupValue: _radioGroupValue,
                      onChanged: _radioOnChanged,
                      child: Text("Medium")),
                  RadioMenuButton<int>(
                      value: 3,
                      groupValue: _radioGroupValue,
                      onChanged: _radioOnChanged,
                      child: Text("Big")),
                ],
              ),
              DropdownButton<String>(
                  value: "Black",
                  items: colorMap.keys.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    _font.color = colorMap[value]!;
                    _updateFont();
                  }),
              FormCheckBox(
                  isChecked: _font.isUnderlined,
                  taskTitle: "Underline",
                  checkBoxCallBack: (value) {
                    _font.isUnderlined = value!;
                    _updateFont();
                  }),
              FormCheckBox(
                  isChecked: _font.isBold,
                  taskTitle: "Bold",
                  checkBoxCallBack: (value) {
                    _font.isBold = value!;
                    _updateFont();
                  }),
              FormCheckBox(
                  isChecked: _font.isItalic,
                  taskTitle: "Italic",
                  checkBoxCallBack: (value) {
                    _font.isItalic = value!;
                    _updateFont();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
