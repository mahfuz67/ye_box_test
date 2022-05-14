import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_yebox/data/services/navigation/navigation.dart';
import 'package:test_yebox/presentation/pages/home.dart';
import 'package:test_yebox/presentation/pages/splash.dart';

import 'data/utils/router.dart';
import 'di/get_it.dart' as get_it;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  get_it.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));
    runApp(const App());
  });
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: get_it.getIt<NavigationServiceImpl>().navigationKey,
      debugShowCheckedModeBanner: false,
      title: 'ye-box-test',
      initialRoute: '/splash',
      onGenerateRoute: (settings)=> RouterC.generate(settings),
    );
  }
}