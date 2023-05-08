import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monieecom/wrappers/app_container.dart';

void main() {
  //
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    //statusBarBrightness: Brightness.dark,
    //statusBarIconBrightness: Brightness.dark,
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
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      ),
      title: 'Monie Ecom',
      debugShowCheckedModeBanner: false,
      home: const AppContainer(),
    );
  }
}
