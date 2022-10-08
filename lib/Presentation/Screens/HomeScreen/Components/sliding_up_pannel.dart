import 'package:oranos_app/Models/item_panel_model.dart';
import 'package:oranos_app/Presentation/Screens/HomeScreen/Widgets/item_pannel.dart';
import 'package:oranos_app/Resources/assets_manager.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../../MainImports/main_imports.dart';

class SlidingUpPanelSection extends StatelessWidget {
  const SlidingUpPanelSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Icon(
            Icons.remove,
            color: ColorManager.grayColor,
            size: width(context) * .1,
          ),
          ItemPanel(
            itemPanelModel: ItemPanelModel(
              image: ImageAssets.panel1,
              title: 'Information Technology',
              subTitle: '23 Experts',
            ),
          ),
          ItemPanel(
            itemPanelModel: ItemPanelModel(
              image: ImageAssets.panel2,
              title: 'Supply Chain',
              subTitle: '12 Experts',
            ),
          ),
          ItemPanel(
            itemPanelModel: ItemPanelModel(
              image: ImageAssets.panel3,
              title: 'Security',
              subTitle: '14 Experts',
            ),
          ),
          ItemPanel(
            itemPanelModel: ItemPanelModel(
              image: ImageAssets.panel4,
              title: 'Human Resource',
              subTitle: '8 Experts',
            ),
          ),
          ItemPanel(
            itemPanelModel: ItemPanelModel(
              image: ImageAssets.panel5,
              title: 'Immigration',
              subTitle: '18 Experts',
            ),
          ),
          ItemPanel(
            itemPanelModel: ItemPanelModel(
              image: ImageAssets.panel6,
              title: 'Translation',
              subTitle: '3 Experts',
            ),
          ),
          AppSize.spaceHeight6(context)
        ],
      ),
    );
  }
}
