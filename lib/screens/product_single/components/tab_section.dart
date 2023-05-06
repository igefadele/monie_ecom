import 'package:flutter/material.dart';
import 'package:moniepointtest/res/custom_colors.dart';

class TabSection extends StatelessWidget {
  const TabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.red),
          child: Container(
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
              indicatorPadding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
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
                  /* child: Text(
                    'About Item',
                    textAlign: TextAlign.left,
                    /* style: TextStyle(
                      fontSize: 15,
                    ), */
                  ), */
                ),
                Tab(
                  text: 'Reviews',
                  /* child: Text(
                    'Reviews',
                    textAlign: TextAlign.left,
                    /* style: TextStyle(
                      fontSize: 15,
                    ), */
                  ), */
                ),
              ],
            ),
          ),
        ),
        /* const Divider(
          height: 2,
          color: Colors.grey,
        ), */
        const SizedBox(
          height: 200,
          child: TabBarView(
            children: [
              Center(
                child: Text('Tab 1'),
              ),
              Center(
                child: Text('Tab 2'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
