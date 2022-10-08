import 'package:oranos_app/Resources/assets_manager.dart';

import '../../../../MainImports/main_imports.dart';
import '../../../../Models/item_expert_model.dart';

class ItemRecommendedExpert extends StatelessWidget {
  const ItemRecommendedExpert({Key? key, required this.itemExpertModel})
      : super(key: key);
  final ItemExpertModel itemExpertModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SizedBox(
        width: width(context) * .45,
        child: Column(
          children: [
            Image(image: AssetImage(itemExpertModel.image)),
            Padding(
              padding: EdgeInsets.all(width(context) * .02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image(
                        image: const AssetImage(ImageAssets.rateIcon),
                        height: height(context) * .03,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        " (${itemExpertModel.rate}) ",
                        style: TextStyle(
                            color: ColorManager.grayIconColor,
                            fontSize: FontSize.textS16(context)),
                      ),
                      const Spacer(),
                      IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: ColorManager.grayIconColor,
                          )),
                    ],
                  ),
                  AppSize.spaceHeight1(context),
                  Text(
                    itemExpertModel.expertName,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  AppSize.spaceHeight1(context),
                  Text(
                    itemExpertModel.expertTitle,
                    style: TextStyle(
                      color: ColorManager.grayColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
