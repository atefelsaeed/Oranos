import '../../../../MainImports/main_imports.dart';
import '../../../../Resources/assets_manager.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Image(
            image: AssetImage(ImageAssets.logo),
          ),
        ),
        AppSize.spaceHeight2(context),
        Text(
          'Expert From Every Planet',
          style: TextStyle(
            color: ColorManager.grayColor,
            fontSize: FontSize.textS20(context),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
