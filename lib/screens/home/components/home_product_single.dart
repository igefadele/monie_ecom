import 'package:flutter/material.dart';
import 'package:moniepointtest/res/custom_colors.dart';

class HomeProductSingle extends StatelessWidget {
  final String? type;
  final bool? favorite;
  final String? assetImage;
  final String? name;
  final String? rating;
  final String raters;
  final String? price;
  final Widget? screen;

  const HomeProductSingle({
    Key? key,
    required this.type,
    required this.favorite,
    required this.assetImage,
    required this.name,
    required this.rating,
    required this.raters,
    required this.price,
    required this.screen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => screen!,
          ),
        );
      },
      child: Card(
        color: Palette.monieGrey2,
        //shadowColor: Palette.monieGrey,
        //surfaceTintColor: Palette.monieGrey,
        //elevation: 5,
        /* shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ), */
        child: Column(
          children: [
            Column(
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
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
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
          ],
        ),
      ),
    );
  }
}
