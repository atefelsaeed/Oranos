import 'package:oranos_app/Presentation/Widgets/language_button.dart';
import 'package:oranos_app/Presentation/Widgets/navigation.dart';
import 'package:oranos_app/Resources/routes_manager.dart';

import '../../../../MainImports/main_imports.dart';
import '../../../Widgets/custom_button.dart';

class SplashFooter extends StatelessWidget {
  SplashFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          function: () {
            Navigation.navigateWithName(context, Routes.introScreenRoute);
          },
          isWidget: true,
          text: 'Get Started',
        ),
        AppSize.spaceHeight2(context),
        InkWell(
          onTap: () {},
          child: RichText(
            text: TextSpan(
              text: 'Don\'t have an account? ',
              style: TextStyle(color: ColorManager.blackColor),
              children: <TextSpan>[
                TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorManager.primaryColor,
                    )),
              ],
            ),
          ),
        ),
        LanguageButton()
      ],
    );
  }
}
