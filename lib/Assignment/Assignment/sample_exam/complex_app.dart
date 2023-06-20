import 'package:flutter/material.dart';

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

class PreAboutScreen extends StatelessWidget {
  const PreAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () =>
                  _openAboutScreen(context: context, fullscreenDialog: true),
              icon: Icon(Icons.info))
        ],
      ),
    );
  }
}

void _openAboutScreen(
    {required BuildContext context, bool fullscreenDialog = false}) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => AboutScreen(),
          fullscreenDialog: fullscreenDialog));
}

class MenuListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ListTile(
          leading: Icon(Icons.info),
          title: Text("about"),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PreAboutScreen(),
                  fullscreenDialog: false))),
      ListTile(
          leading: Icon(Icons.font_download),
          title: Text("font"),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FontWidgetPage(),
                  fullscreenDialog: false))),
      Divider(color: Colors.grey),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("settings"),
      )
    ]);
  }
}

class RightDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            // child: Icon(Icons.info),
            child: Icon(
              Icons.face,
              size: 128,
              color: Colors.white54,
            ),
            decoration: BoxDecoration(color: Colors.lightGreen),
          ),
          MenuListTileWidget()
        ],
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text("About Page"),
      )),
    );
  }
}

class FormCheckBox extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final ValueChanged checkBoxCallBack;

  FormCheckBox(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallBack});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        color: Colors.lightGreen.shade50,
        child: CheckboxListTile(
          title: Text(taskTitle),
          value: isChecked,
          onChanged: checkBoxCallBack,
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  final String inputString;
  final double fontSize;
  final Color fontColor;
  final bool isUnderlined;
  final bool isBold;
  final bool isItalic;

  const TextContainer({
    required this.inputString,
    required this.fontSize,
    required this.fontColor,
    required this.isUnderlined,
    required this.isBold,
    required this.isItalic,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.lightGreen.shade200,
        height: 150,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            inputString,
            style: TextStyle(
              fontSize: fontSize,
              color: fontColor,
              decoration:
                  isUnderlined ? TextDecoration.underline : TextDecoration.none,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class FontWidgetPage extends StatefulWidget {
  @override
  _FontWidgetState createState() => _FontWidgetState();
}

class _FontWidgetState extends State<FontWidgetPage> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  FontInfo _font = FontInfo(inputString: "Hello World");
  int _radioGroupValue = 1;

  Map<String, Color> colorMap = {
    "Black": Colors.black,
    "Green": Colors.green.shade900,
    "Yellow": Colors.yellow.shade500,
    "Red": Colors.red.shade500
  };

  void _updateFont() {
    setState(() {
      if (_formStateKey.currentState!.validate()) {
        _formStateKey.currentState!.save();
      }
    });
  }

  void _radioOnChanged(var radioValue) {
    _radioGroupValue = radioValue as int;
    _font.size = 20.0 * radioValue;
    _updateFont();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Font Page"),
      ),
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
                      hintText: 'Hello World!',
                      labelText: 'Text',
                    ),
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
