import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moniepointtest/wrappers/app_container.dart';

void main() {
  //
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarDividerColor: Colors.grey,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  //
  runApp(const MonieEcom());
}

class MonieEcom extends StatelessWidget {
  const MonieEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monie Ecom',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppContainer(),
    );
  }
}
