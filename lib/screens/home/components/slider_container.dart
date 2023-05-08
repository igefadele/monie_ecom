import 'package:monieecom/res/custom_colors.dart';
import 'package:flutter/material.dart';

class SliderContainer extends StatelessWidget {
  final String? sliderTag;
  final AssetImage? assetImage;
  final String? sliderTitle;
  final String? sliderDescription;
  final Widget? screen;
  final String? buttonText;
  final double sliderTitleFontSize;

  const SliderContainer({
    Key? key,
    required this.assetImage,
    required this.sliderTitle,
    required this.sliderDescription,
    required this.screen,
    required this.sliderTag,
    required this.buttonText,
    required this.sliderTitleFontSize,
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
      child: Container(
        //margin: const EdgeInsets.all(6.0),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: assetImage ??
                const AssetImage('assets/monie_ecom_slider/1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.only(
            top: 25,
            bottom: 25,
            left: 25,
            right: 25,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  sliderTag.toString(),
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      color: Palette.monieBlack1,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                sliderTitle.toString(),
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Palette.monieBlack1,
                  fontSize: sliderTitleFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                sliderDescription.toString(),
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Palette.monieBlack3,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Palette.monieBlack1,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 13.0, bottom: 13.0),
                  child: Text(
                    buttonText.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Palette.monieWhite,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
