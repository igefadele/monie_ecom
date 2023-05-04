import 'package:moniepointtest/res/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:moniepointtest/screens/home/home_screen.dart';
import 'package:moniepointtest/screens/settings/settings_screen.dart';
import 'package:moniepointtest/screens/voucher/voucher_screen.dart';
import 'package:moniepointtest/screens/wallet/wallet_screen.dart';

class PrivateWrapper extends StatefulWidget {
  const PrivateWrapper({super.key});

  @override
  PrivateWrapperState createState() => PrivateWrapperState();
}

class PrivateWrapperState extends State<PrivateWrapper> {
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
        selectedIconTheme: IconThemeData(color: Palette.monieNavy, size: 30),
        selectedItemColor: Palette.monieNavy,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedIconTheme: const IconThemeData(
          color: Colors.black87,
        ),
        unselectedItemColor: Colors.black87,
        backgroundColor: Palette.monieYellow,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 10,
        iconSize: 18,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cast_for_education_rounded),
            label: 'Pages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Info',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onMenuTapped,
      ),
    );
  }
}
