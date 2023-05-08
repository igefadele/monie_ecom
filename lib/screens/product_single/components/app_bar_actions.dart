import 'package:monieecom/res/custom_colors.dart';
import 'package:flutter/material.dart';

class AppBarActions extends StatefulWidget {
  const AppBarActions({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AppBarActionsState createState() => _AppBarActionsState();
}

class _AppBarActionsState extends State<AppBarActions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        top: 10,
        right: 15,
      ),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.favorite_rounded,
              size: 24,
              color: Colors.pink,
            ),
            onPressed: () {},
          ),
          //const SizedBox(width: 3),
          IconButton(
            icon: const Icon(
              Icons.share_outlined,
              size: 24,
              color: Palette.monieBlack3,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {},
            child: Stack(
              children: [
                const Icon(
                  Icons.shopping_basket_outlined,
                  color: Palette.monieBlack3,
                  size: 24,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: const Text(
                      '9+',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
