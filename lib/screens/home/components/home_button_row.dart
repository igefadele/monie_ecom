import 'package:moniepointtest/res/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:moniepointtest/screens/home/components/button_label_widget.dart';

class HomeButtonRow extends StatelessWidget {
  const HomeButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 15,
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: const [
          ButtonLabelWidget(
            icon: Icons.home,
            label: 'Category',
          ),
          ButtonLabelWidget(
            icon: Icons.flight,
            label: 'Flight',
          ),
          ButtonLabelWidget(
            icon: Icons.money_rounded,
            label: 'Bill',
          ),
          ButtonLabelWidget(
            icon: Icons.web_stories_outlined,
            label: 'Data Plan',
          ),
          ButtonLabelWidget(
            icon: Icons.payment_rounded,
            label: 'Top Up',
          )
        ],
      ),
    );
  }
}
