import 'package:oranos_app/Resources/assets_manager.dart';

import '../../../../MainImports/main_imports.dart';

class ItemBotChat extends StatelessWidget {
  const ItemBotChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context)*.8,
      child: Row(
        children: [
          Image(image: AssetImage(ImageAssets.botIcon)),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: ColorManager.grayCircleColor,borderRadius: BorderRadius.circular(15)),
            child: Text('dddddddd'
            ),
          )
        ],
      ),
    );
  }
}
