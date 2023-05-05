import 'package:flutter/material.dart';
import 'package:moniepointtest/res/custom_colors.dart';

class SearchBarForm extends StatelessWidget {
  const SearchBarForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 20,
        top: 20,
        left: 10,
      ),
      child: TextFormField(
        autofocus: false,
        //textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search_rounded),
          contentPadding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          hintText: "Search",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Palette.monieGrey3,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
