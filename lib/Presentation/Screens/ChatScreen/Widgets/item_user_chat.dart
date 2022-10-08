import '../../../../MainImports/main_imports.dart';
import '../../../../Resources/assets_manager.dart';

class ItemUserChat extends StatelessWidget {
  const ItemUserChat({Key? key, required this.msg}) : super(key: key);
  final String msg;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(

        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            const Image(image: AssetImage(ImageAssets.userChat)),
            AppSize.spaceWidth2(context),
            Container(
              padding: const EdgeInsets.all(10),
              width: width(context) * .6,
              decoration: BoxDecoration(
                  color: ColorManager.primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                msg,
                style: TextStyle(
                  color: ColorManager.wight,
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
