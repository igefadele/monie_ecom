import 'package:flutter/material.dart';
import 'package:moniepointtest/res/custom_colors.dart';

class ProductImage extends StatelessWidget {
  final String? assetImage;

  const ProductImage({
    Key? key,
    required this.assetImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
}
