import 'package:oranos_app/Resources/assets_manager.dart';

import '../../../../MainImports/main_imports.dart';

class ItemBotChat extends StatelessWidget {
  const ItemBotChat({Key? key, required this.msg}) : super(key: key);
  final String msg;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          const Image(image: AssetImage(ImageAssets.botIcon)),
          AppSize.spaceWidth2(context),
          Container(
            width: width(context) * .6,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: ColorManager.grayCircleColor,
                borderRadius: BorderRadius.circular(10)),
            child: Text(msg),
          )
        ],
      ),
    );
  }
}
