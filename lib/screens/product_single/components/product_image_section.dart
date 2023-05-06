import 'package:flutter/material.dart';
import 'package:moniepointtest/res/custom_colors.dart';

class ProductImageSection extends StatefulWidget {
  final List<String> productImages;

  const ProductImageSection({super.key, required this.productImages});

  @override
  // ignore: library_private_types_in_public_api
  _ProductImageSectionState createState() => _ProductImageSectionState();
}

class _ProductImageSectionState extends State<ProductImageSection> {
  int _selectedImageIndex = 0;

  void _onImageTap(int index) {
    setState(() {
      _selectedImageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          widget.productImages[_selectedImageIndex],
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          /*  bottom: 10,
          right: 0,
          left: 0, */
          top: 10.0,
          left: 10.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < widget.productImages.length; i++)
                GestureDetector(
                  onTap: () => _onImageTap(i),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      //padding: const EdgeInsets.all(2),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            widget.productImages[i],
                            //fit: BoxFit.cover,
                          ),
                        ),
                        border: Border.all(
                          color: i == _selectedImageIndex
                              ? Palette.monieGreen
                              : Colors.transparent,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      /* child: Image.asset(
                        widget.productImages[i],
                        fit: BoxFit.cover,
                      ), */
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
