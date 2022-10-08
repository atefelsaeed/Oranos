import '../../MainImports/main_imports.dart';

class LanguageButton extends StatelessWidget {
  LanguageButton({Key? key}) : super(key: key);
  String language = 'English';

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.language,
        color: ColorManager.blackColor,
      ),
      label: Text(
        language,
        style: TextStyle(
          color: ColorManager.blackColor,
        ),
      ),
    );
  }
}
