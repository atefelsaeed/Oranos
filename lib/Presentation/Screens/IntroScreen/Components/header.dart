import '../../../../MainImports/main_imports.dart';
import '../../../../Resources/assets_manager.dart';

class IntroHeader extends StatelessWidget {
  IntroHeader({Key? key}) : super(key: key);
  String userName = 'Oranobot';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppSize.margin2(context)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Image(
              image: const AssetImage(ImageAssets.introPath),
              width: width(context) * .5,
            ),
          ),
          Container(
            width: width(context) * .6,
            margin: EdgeInsets.only(top: height(context) * .015),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Hi, My name is ',
                    style: TextStyle(
                        color: ColorManager.blackColor,
                        fontSize: FontSize.textS20(context)),
                    children: <TextSpan>[
                      TextSpan(
                          text: userName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: FontSize.textS20(context)
                              // color: ColorManager.primaryColor,
                              )),
                    ],
                  ),
                ),
                Text(
                  'I will always be there to help and assist you.',
                  style: TextStyle(fontSize: FontSize.textS20(context)),
                ),
                AppSize.spaceHeight2(context),
                Text(
                  'Say Start To go to Next.',
                  style: TextStyle(fontSize: FontSize.textS20(context)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
