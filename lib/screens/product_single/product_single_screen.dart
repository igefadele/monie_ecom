import 'package:flutter/material.dart';
import 'package:moniepointtest/res/custom_colors.dart';
import 'package:moniepointtest/screens/product_single/components/app_bar_actions.dart';
import 'package:moniepointtest/screens/product_single/components/product_info.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ProductInfo(
                name: widget.name,
                rating: widget.rating,
              )
            ],
          ),
        ),
      ),
    );
  }
}
