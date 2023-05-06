import 'package:flutter/services.dart';
import 'package:moniepointtest/res/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:moniepointtest/screens/home/components/home_button_row.dart';
import 'package:moniepointtest/screens/home/components/home_product_section.dart';
import 'package:moniepointtest/screens/home/components/home_slider.dart';
import 'package:moniepointtest/screens/home/components/search_bar_form.dart';
import 'package:moniepointtest/screens/home/components/search_bar_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _showAppBarBackground = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 0 && !_showAppBarBackground) {
        setState(() {
          _showAppBarBackground = true;
        });
      } else if (_scrollController.offset <= 0 && _showAppBarBackground) {
        setState(() {
          _showAppBarBackground = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor:
            _showAppBarBackground ? Colors.transparent : Colors.transparent,
        statusBarIconBrightness:
            _showAppBarBackground ? Brightness.dark : Brightness.dark,
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      //
      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            _showAppBarBackground ? Colors.white : Colors.transparent,
        title: const SearchBarForm(),
        actions: const [
          SearchBarIcons(),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: const [
            //HomeSearchBar(),
            HomeSlider(),
            HomeButtonRow(),
            HomeProductSection(),
          ],
        ),
      ),
    );
  }
}
