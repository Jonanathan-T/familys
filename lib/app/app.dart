import 'package:familys/app/ui/theme/familys_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui/pages/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    //? Permet à l'application de toujours être en mode portrait
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: familysTheme,
      home: const SplashPage(),
    );
  }
}
