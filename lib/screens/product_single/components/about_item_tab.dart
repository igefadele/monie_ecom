import 'package:flutter/material.dart';
import 'package:monieecom/res/custom_colors.dart';

class AboutItemTab extends StatelessWidget {
  const AboutItemTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 15,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Brand:',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 13,
                        color: Palette.monieGrey,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'ChArmkpR',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 13,
                        color: Palette.monieBlack1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Color:',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 13,
                        color: Palette.monieGrey,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Aprokot',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 13,
                        color: Palette.monieBlack1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            color: Palette.monieWhite,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Total Price',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 12,
                          color: Palette.monieGrey,
                        ),
                      ),
                      Text(
                        '\$12.00',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 20,
                          color: Palette.monieGreen,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 60,
                        decoration: const BoxDecoration(
                          /* border: Border.all(
                            color: Palette.monieGreen,
                            width: 2,
                          ), */
                          color: Palette.monieGreen,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            bottomLeft: Radius.circular(4),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Palette.monieWhite,
                              size: 15,
                            ),
                            Text(
                              '1',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Palette.monieWhite,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 110,
                        decoration: const BoxDecoration(
                          color: Palette.monieBlack1,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Buy Now',
                            style: TextStyle(
                              fontSize: 15,
                              color: Palette.monieWhite,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          /* Expanded(
            child: Container(
              color: Palette.monieWhite,
            ),
          ) */
        ],
      ),
    );
  }
}
