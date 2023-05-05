import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:moniepointtest/screens/home/components/slider_container.dart';
import 'package:moniepointtest/screens/home/home_screen.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        //1st Image of Slider
        SliderContainer(
          assetImage: AssetImage("assets/monie_ecom_slider/1.png"),
          sliderTag: '#FASHION DAY',
          sliderTitle: '80% OFF',
          sliderDescription: 'Discover fashion that suits to \nyour style',
          buttonText: 'Check this out',
          sliderTitleFontSize: 25,
          screen: HomeScreen(),
        ),

        //2nd Image of Slider
        SliderContainer(
          assetImage: AssetImage("assets/monie_ecom_slider/2.png"),
          sliderTag: '#BEAUTY SALE',
          sliderTitle: 'DISCOVER OUR \nBEAUTY COLLECTION',
          sliderDescription: '',
          buttonText: 'Check this out',
          sliderTitleFontSize: 20,
          screen: HomeScreen(),
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: 300.0,
        //enlargeCenterPage: true,
        autoPlay: false,
        //aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 1.0,
      ),
    );
  }
}
