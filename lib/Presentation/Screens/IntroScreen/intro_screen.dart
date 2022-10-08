import 'package:oranos_app/Presentation/Screens/IntroScreen/Components/footer.dart';
import 'package:oranos_app/Presentation/Screens/IntroScreen/Components/header.dart';
import 'package:oranos_app/Resources/assets_manager.dart';

import '../../../MainImports/main_imports.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              AppSize.spaceHeight1(context),
              Center(child: IntroHeader()),
              Image(
                image: const AssetImage(ImageAssets.introLogo),
                width: width(context) * .5,
              ),
              AppSize.spaceHeight3(context),
              const IntroFooter()
            ],
          ),
        ),
      ),
    );
  }
}
