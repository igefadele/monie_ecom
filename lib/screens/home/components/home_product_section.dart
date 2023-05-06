import 'package:flutter/material.dart';
import 'package:moniepointtest/res/custom_colors.dart';
import 'package:moniepointtest/screens/home/components/home_product_single.dart';

class HomeProductSection extends StatelessWidget {
  const HomeProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Palette.monieGrey2),
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 15,
        left: 10,
        right: 10,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 8,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Best Sale Product',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      color: Palette.monieBlack1,
                      fontWeight: FontWeight.bold),
                ),
                //SizedBox(height: 7),
                Text(
                  'See more',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    color: Palette.monieGreen,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: HomeProductSingle(
                  assetImage: 'assets/monie_ecom_home/1.png',
                  favorite: false,
                  type: 'Shirt',
                  name: 'Essentials Men\'s Short-Sleeve Crewneck T-Shirt',
                  rating: '4.9',
                  raters: '2356',
                  price: '12.00',
                ),
              ),
              //SizedBox(width: 7),
              Expanded(
                child: HomeProductSingle(
                  assetImage: 'assets/monie_ecom_home/2.png',
                  favorite: true,
                  type: 'Shirt',
                  name: 'Essentials Men\'s Short-Sleeve Crewneck T-Shirt',
                  rating: '4.9',
                  raters: '2356',
                  price: '12.00',
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: HomeProductSingle(
                  assetImage: 'assets/monie_ecom_home/3.png',
                  favorite: true,
                  type: 'Shirt',
                  name: 'Essentials Men\'s Short-Sleeve Crewneck T-Shirt',
                  rating: '4.9',
                  raters: '2356',
                  price: '12.00',
                ),
              ),
              //SizedBox(width: 7),
              Expanded(
                child: HomeProductSingle(
                  assetImage: 'assets/monie_ecom_home/4.png',
                  favorite: false,
                  type: 'Shirt',
                  name: 'Essentials Men\'s Short-Sleeve Crewneck T-Shirt',
                  rating: '4.9',
                  raters: '2356',
                  price: '12.00',
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: HomeProductSingle(
                  assetImage: 'assets/monie_ecom_home/5.png',
                  favorite: false,
                  type: 'Shirt',
                  name: 'Essentials Men\'s Short-Sleeve Crewneck T-Shirt',
                  rating: '4.9',
                  raters: '2356',
                  price: '12.00',
                ),
              ),
              //SizedBox(width: 7),
              Expanded(
                child: HomeProductSingle(
                  assetImage: 'assets/monie_ecom_home/6.png',
                  favorite: false,
                  type: 'Shirt',
                  name: 'Essentials Men\'s Short-Sleeve Crewneck T-Shirt',
                  rating: '4.9',
                  raters: '2356',
                  price: '12.00',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
