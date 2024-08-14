import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.placeHolderText,
    this.textFieldColor = ColorConstants.textFieldColor,
  });

  final String placeHolderText;
  final Color textFieldColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 268,
      child: TextField(
        cursorColor: Colors.blue,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        decoration: InputDecoration(
          hintText: placeHolderText,
          hintStyle: TextStyle(
            color: ColorConstants.greyFont,
            fontSize: 17,
            fontFamily: "Uber-Move/16",
            fontFamilyFallback: <String>[
              "Uber-Move/16",
            ],
            height: 3.4,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.2,
          ),
          fillColor: textFieldColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}
