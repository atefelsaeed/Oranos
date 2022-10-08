import '../../../../MainImports/main_imports.dart';
import '../../../../Resources/assets_manager.dart';

homeAppBar(context) => AppBar(
      backgroundColor: ColorManager.wight,
      elevation: .5,
      title: Image(
        image: const AssetImage(ImageAssets.logo),
        width: width(context) * .2,
      ),
      centerTitle: true,
      actions: const [Image(image: AssetImage(ImageAssets.searchIcon))],
      leadingWidth: width(context) * .2,
      leading: Container(
        margin: EdgeInsets.symmetric(horizontal: width(context) * .05),
        child: const CircleAvatar(
            backgroundImage: AssetImage(ImageAssets.user1)),
      ),
    );
