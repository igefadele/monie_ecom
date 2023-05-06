import 'package:flutter/material.dart';
import 'package:moniepointtest/res/custom_colors.dart';
import 'package:moniepointtest/screens/product_single/components/app_bar_actions.dart';
import 'package:moniepointtest/screens/product_single/components/product_image_section.dart';
import 'package:moniepointtest/screens/product_single/components/product_info.dart';
import 'package:moniepointtest/screens/product_single/components/tab_section.dart';

class ProductSingleScreen extends StatefulWidget {
  final String? name;
  final String? assetImage;
  final String? rating;
  final String? price;
  const ProductSingleScreen({
    Key? key,
    this.name,
    this.assetImage,
    this.rating,
    this.price,
  }) : super(key: key);

  @override
  ProductSingleScreenState createState() => ProductSingleScreenState();
}

class ProductSingleScreenState extends State<ProductSingleScreen> {
  final List<String> _productImages = [
    "assets/monie_ecom_product/1.png",
    "assets/monie_ecom_product/2.png",
    "assets/monie_ecom_product/3.png",
    "assets/monie_ecom_product/4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Palette.monieGrey2,
      //
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        //title: const SearchBarForm(),
        actions: const [AppBarActions()],
      ),
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                ProductImageSection(productImages: _productImages),
                ProductInfo(
                  name: widget.name,
                  rating: widget.rating,
                ),
                const TabSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
