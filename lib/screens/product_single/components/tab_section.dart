import 'package:flutter/material.dart';
import 'package:monieecom/res/custom_colors.dart';
import 'package:monieecom/screens/product_single/components/about_item_tab.dart';

class TabSection extends StatelessWidget {
  const TabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          //bottom: 20,
          ),
      child: Column(
        children: [
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.red),
            child: Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              child: const TabBar(
                indicatorColor: Palette.monieGreen,
                indicatorWeight: 2.8,
                /* indicatorPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                ), */
                dividerColor: Palette.monieGreen,
                labelColor: Palette.monieGreen,
                unselectedLabelColor: Palette.monieGrey,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                tabs: [
                  Tab(
                    text: 'About Item',
                  ),
                  Tab(
                    text: 'Reviews',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 150,
            child: TabBarView(
              children: [
                AboutItemTab(),
                AboutItemTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
