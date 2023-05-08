import 'package:flutter/material.dart';
import 'package:monieecom/res/custom_colors.dart';

class ProductInfo extends StatelessWidget {
  final String? name;
  final String? rating;

  const ProductInfo({
    Key? key,
    required this.name,
    required this.rating,
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
        children: [
          const Text(
            'tokobaju.id',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14,
              color: Palette.monieGrey,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            name.toString(),
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 13),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '$rating Ratings',
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Palette.monieGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 4),
              const Text(
                '\u{00B7}',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Palette.monieGrey,
                ),
              ),
              const SizedBox(width: 4),
              const Text(
                '2.3k+ Reviews',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  color: Palette.monieGrey,
                ),
              ),
              const SizedBox(width: 4),
              const Text(
                '\u{00B7}',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 30,
                  color: Palette.monieGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              const Text(
                '2.9k+ Sold',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  color: Palette.monieGrey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
