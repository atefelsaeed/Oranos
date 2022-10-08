import '../../../../MainImports/main_imports.dart';
import '../../../../Models/item_panel_model.dart';

class ItemPanel extends StatelessWidget {
  const ItemPanel({Key? key, required this.itemPanelModel}) : super(key: key);
  final ItemPanelModel itemPanelModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorManager.wight,
          border: Border.all(color: ColorManager.grayIconColor)),
      child: Row(
        children: [
          Image(image: AssetImage(itemPanelModel.image)),
          AppSize.spaceWidth4(context),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemPanelModel.title,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                itemPanelModel.subTitle,
                style: TextStyle(color: ColorManager.grayColor),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorManager.grayIconColor,
              ))
        ],
      ),
    );
  }
}
