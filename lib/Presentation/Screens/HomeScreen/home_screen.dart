import 'package:oranos_app/Presentation/Screens/HomeScreen/Components/app_bar.dart';
import 'package:oranos_app/Presentation/Screens/HomeScreen/Components/online_expert.dart';
import 'package:oranos_app/Presentation/Screens/HomeScreen/Components/recommended_expert.dart';
import 'package:oranos_app/Presentation/Screens/HomeScreen/Components/sliding_up_pannel.dart';
import 'package:oranos_app/Presentation/Screens/HomeScreen/Widgets/item_load_more.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../MainImports/main_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: SafeArea(
        child: SlidingUpPanel(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemLoadMore(title: 'Recommended Experts', function: () {}),
                RecommendedExpert(),
                ItemLoadMore(title: 'Online Experts', function: () {}),
                OnlineExpert(),
              ].padded(const EdgeInsets.all(10.0)),
            ),
            collapsed: Icon(
              Icons.remove,
              color: ColorManager.grayColor,
              size: width(context) * .1,
            ),
            padding: EdgeInsets.only(top: 20),
            backdropEnabled: true,
            maxHeight: height(context) * .55,
            minHeight: 20,
            panel: const SlidingUpPanelSection()),
      ),
    );
  }
}
