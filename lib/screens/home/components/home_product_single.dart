import 'package:flutter/material.dart';
import 'package:monieecom/res/custom_colors.dart';
import 'package:monieecom/screens/product_single/product_single_screen.dart';

class HomeProductSingle extends StatelessWidget {
  final String? type;
  final bool? favorite;
  final String? assetImage;
  final String? name;
  final String? rating;
  final String raters;
  final String? price;

  const HomeProductSingle({
    Key? key,
    required this.type,
    required this.favorite,
    required this.assetImage,
    required this.name,
    required this.rating,
    required this.raters,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductSingleScreen(
              name: name,
              assetImage: assetImage,
              rating: rating,
              price: price,
            ),
          ),
        );
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Palette.monieGrey3,
                ),
                child: Image.asset(
                  assetImage.toString(),
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10, // adjust this value to position the icon
                right: 10, // adjust this value to position the icon
                child: Icon(
                  favorite == true ? Icons.favorite : Icons.favorite_border,
                  color: favorite == true ? Colors.pink : Colors.grey,
                  size: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 20,
              left: 10,
              right: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type.toString(),
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Palette.monieGrey,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  name.toString(),
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 12,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$rating | $raters',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 13),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(),
                        Text(
                          '\$$price',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Palette.monieGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
