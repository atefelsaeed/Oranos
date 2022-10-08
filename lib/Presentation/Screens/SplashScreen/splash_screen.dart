import 'package:oranos_app/Presentation/Screens/SplashScreen/Components/body.dart';
import 'package:oranos_app/Presentation/Screens/SplashScreen/Components/footer.dart';
import 'package:oranos_app/Resources/assets_manager.dart';

import '../../../MainImports/main_imports.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            ImageAssets.startBackgroundImage,
          ),
          fit: BoxFit.fill,
        )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const SplashBody(),
              const Spacer(),
              SplashFooter()
            ], //
          ),
        ),
      ),
    );
  }
}
