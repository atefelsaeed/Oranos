import '../../../../MainImports/main_imports.dart';
import '../../../../Resources/routes_manager.dart';
import '../../../Widgets/custom_button.dart';
import '../../../Widgets/language_button.dart';
import '../../../Widgets/navigation.dart';

class IntroFooter extends StatelessWidget {
  const IntroFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          function: () {
            Navigation.navigateWithName(context, Routes.chatScreenRoute);
          },
          btnWidth: width(context) * .3,
          isWidget: true,
          text: 'Next',
        ),
        AppSize.spaceHeight2(context),
        LanguageButton()
      ],
    );
  }
}
