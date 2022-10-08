import '../../../../MainImports/main_imports.dart';

class CheackGroube extends StatefulWidget {
  const CheackGroube({Key? key}) : super(key: key);

  @override
  _CheackGroubeState createState() => _CheackGroubeState();
}

class _CheackGroubeState extends State<CheackGroube> {
  bool _isChecked = true;

  List<String> _texts = [
    "InduceSmile.com," "Flutter.io",
    "google.com",
    "youtube.com",
    "yahoo.com",
    "gmail.com"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.all(8.0),
      children: _texts.map((text) => CheckboxListTile(
        title: Text(text),
        value: _isChecked,
        onChanged: (val) {
          setState(() {
            _isChecked = val!;

          });
        },
      )).toList(),
    );
  }
}
