import 'package:monieecom/res/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:monieecom/screens/home/home_screen.dart';
import 'package:monieecom/screens/settings/settings_screen.dart';
import 'package:monieecom/screens/voucher/voucher_screen.dart';
import 'package:monieecom/screens/wallet/wallet_screen.dart';

class AppContainer extends StatefulWidget {
  const AppContainer({super.key});

  @override
  AppContainerState createState() => AppContainerState();
}

class AppContainerState extends State<AppContainer> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const VoucherScreen(),
    const WalletScreen(),
    const SettingsScreen(),
  ];

  void _onMenuTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme:
            const IconThemeData(color: Palette.monieGreen, size: 25),
        selectedItemColor: Palette.monieBlack1,
        //selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedIconTheme: const IconThemeData(
          color: Palette.monieGrey,
          size: 25,
        ),
        backgroundColor: Palette.monieGrey2,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 10,
        //iconSize: 18,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.money),
            ),
            label: 'Voucher',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.wallet),
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Icon(Icons.settings),
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onMenuTapped,
      ),
    );
  }
}
