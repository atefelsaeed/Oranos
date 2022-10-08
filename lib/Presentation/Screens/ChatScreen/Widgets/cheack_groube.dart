import '../../../../MainImports/main_imports.dart';

class CheackGroube extends StatefulWidget {
  const CheackGroube({Key? key}) : super(key: key);

  @override
  _CheackGroubeState createState() => _CheackGroubeState();
}

class _CheackGroubeState extends State<CheackGroube> {

  List<String> data = [
    "Security",
    "Supply Chain",
    "Information Technology",
    "Human Resource",
    "Business Research",
  ];
  List<String> userChecked = [];

  void _onSelected(bool selected, String dataName) {
    if (selected == true) {
      setState(() {
        userChecked.add(dataName);
      });
    } else {
      setState(() {
        userChecked.remove(dataName);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) {
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: -5),
              title: Text(data[i]),

              leading: Checkbox(
                activeColor: ColorManager.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                value: userChecked.contains(data[i]),
                onChanged: (val) {
                  _onSelected(val!, data[i]);
                  print(userChecked);
                },
              )
            //you can use checkboxlistTile too
          );
        });
  }
}
