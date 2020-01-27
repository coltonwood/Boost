import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pha_flutter/routes.dart';
import 'package:pha_flutter/theme/style.dart';

void main() => runApp(PHA());

class PHA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));

    // keeps navbar/statusbar color from being overwritten
    WidgetsBinding.instance.renderView.automaticSystemUiAdjustment = false;

    return MaterialApp(
      title: 'HealthMine',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      initialRoute: '/',
      routes: routes,
    );
  }
}
