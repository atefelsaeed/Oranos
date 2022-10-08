import 'package:oranos_app/Presentation/Screens/HomeScreen/Widgets/item_recommended_expert.dart';

import '../../../../Data/Locale/home_data.dart';
import '../../../../MainImports/main_imports.dart';

class RecommendedExpert extends StatelessWidget with HomeData {
  RecommendedExpert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context) * .38,
      child: ListView.separated(
        itemCount: recommendedExperts.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ItemRecommendedExpert(
            itemExpertModel: recommendedExperts[index],
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: width(context) * .01,
        ),
      ),
    );
  }
}
