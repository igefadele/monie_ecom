import 'package:moniepointtest/res/custom_colors.dart';
import 'package:flutter/material.dart';

class ButtonLabelWidget extends StatelessWidget {
  final IconData? icon;
  final String? label;
  const ButtonLabelWidget({
    super.key,
    this.icon,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 13,
        right: 13,
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Palette.monieGrey2,
              borderRadius: BorderRadius.circular(7.0),
              /* boxShadow: const [
                BoxShadow(
                  color: Palette.monieGrey2,
                  spreadRadius: 1,
                )
              ], */
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Icon(
                icon,
                color: Palette.monieGrey,
                size: 20,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            label.toString(),
            style: const TextStyle(
              color: Palette.monieGrey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
