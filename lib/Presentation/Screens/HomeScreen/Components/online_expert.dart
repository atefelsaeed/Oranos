import 'package:oranos_app/Presentation/Screens/HomeScreen/Widgets/item_recommended_expert.dart';

import '../../../../Data/Locale/home_data.dart';
import '../../../../MainImports/main_imports.dart';
import '../Widgets/item_online_expert.dart';

class OnlineExpert extends StatelessWidget with HomeData {
  OnlineExpert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context) * .15,
      child: ListView.separated(
        itemCount: onlineExperts.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ItemOnlineExpert(
            expertName: onlineExperts[index],
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: width(context) * .03,
        ),
      ),
    );
  }
}
