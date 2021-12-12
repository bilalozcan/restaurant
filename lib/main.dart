import 'package:flutter/material.dart';
import 'package:restaurant/view/home/home_view.dart';

import 'core/init/cache/locale_manager.dart';
import 'view/splash/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleManager.preferencesInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        routes: {
          '/': (context) => const HomeView(),
          '/splash': (context) => const SplashView()
        });
  }
}
