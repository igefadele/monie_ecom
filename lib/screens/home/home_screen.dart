import 'package:moniepointtest/res/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:moniepointtest/screens/home/components/home_button_row.dart';
import 'package:moniepointtest/screens/home/components/home_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HomeSlider(),
            HomeButtonRow(),
          ],
        ),
      ),
    );
  }
}
