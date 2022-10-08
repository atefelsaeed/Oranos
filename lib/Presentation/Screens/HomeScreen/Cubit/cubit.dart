import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranos_app/Presentation/Screens/HomeScreen/Cubit/states.dart';
import 'package:oranos_app/Resources/assets_manager.dart';

import '../../../../MainImports/main_imports.dart';
import '../home_screen.dart';

class HomeDashBoardCubit extends Cubit<HomeDashBoardStates> {
  HomeDashBoardCubit() : super(HomeDashBoardInitialState());

  static HomeDashBoardCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Image(image: AssetImage(ImageAssets.homeIcon)),
      label: ''
    ),
    const BottomNavigationBarItem(
      icon: Image(image: AssetImage(ImageAssets.starIcon)),
        label: ''
    ),
    const BottomNavigationBarItem(
      icon: Image(image: AssetImage(ImageAssets.walletIcon)),
        label: ''
    ),
    const BottomNavigationBarItem(
      icon: Image(image: AssetImage(ImageAssets.profileIcon)),
        label: ''
    ),
  ];

  List<Widget> screens = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(HomeDashBoardBottomNavState());
  }
}
