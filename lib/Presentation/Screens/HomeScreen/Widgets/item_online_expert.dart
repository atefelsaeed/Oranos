import '../../../../MainImports/main_imports.dart';

class ItemOnlineExpert extends StatelessWidget {
  const ItemOnlineExpert({Key? key, required this.expertName}) : super(key: key);
final String expertName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            CircleAvatar(
              maxRadius: 30,
              minRadius: 15,
              backgroundColor: ColorManager.grayCircleColor,
            ),
            CircleAvatar(
              maxRadius: 6,
              backgroundColor: ColorManager.greenColor,
            )
          ],
        ),
        AppSize.spaceHeight2(context),
        Text(expertName,style: TextStyle(color: ColorManager.grayColor),)
      ],
    );
  }
}
