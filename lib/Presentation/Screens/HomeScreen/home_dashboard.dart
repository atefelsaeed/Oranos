import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../MainImports/main_imports.dart';
import 'Cubit/cubit.dart';
import 'Cubit/states.dart';

class HomeDashBoard extends StatelessWidget {
  const HomeDashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeDashBoardCubit(),
      child: BlocBuilder<HomeDashBoardCubit, HomeDashBoardStates>(
        builder: (context, state) {
          HomeDashBoardCubit cubit = HomeDashBoardCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: ColorManager.primaryColor,
              unselectedItemColor: ColorManager.grayColor,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeBottomNavBar(index);
              },
              items: cubit.bottomItems,
              showSelectedLabels: false,   // <-- HERE
              showUnselectedLabels: false, // <-- AND HERE
              type: BottomNavigationBarType.fixed,
            ),
          );
        },
      ),
    );
  }
}
