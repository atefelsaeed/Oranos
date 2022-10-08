import 'package:oranos_app/Models/item_expert_model.dart';
import 'package:oranos_app/Resources/assets_manager.dart';

mixin HomeData {
  List<ItemExpertModel> recommendedExperts = [
    ItemExpertModel(
      image: ImageAssets.user1,
      rate: '5.0',
      expertName: 'Kareem Adel',
      expertTitle: 'Supply Chain',
    ),
    ItemExpertModel(
      image: ImageAssets.user2,
      rate: '4.9',
      expertName: 'Merna Adel',
      expertTitle: 'Supply Chain',
    ),
    ItemExpertModel(
      image: ImageAssets.user1,
      rate: '5.0',
      expertName: 'Kareem Adel',
      expertTitle: 'Supply Chain',
    ),
  ];

  List<String> onlineExperts = [
    'Lance',
    'Niles',
    'Samuel',
    'Hilary',
    'Hanson',
  ];
}
