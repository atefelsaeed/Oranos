import 'package:oranos_app/MainImports/main_imports.dart';

import 'Resources/routes_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oranos',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: ThemeData(
        primaryColor: ColorManager.primaryColor,
        fontFamily: 'Poppins'
      ),
    );
  }
}
