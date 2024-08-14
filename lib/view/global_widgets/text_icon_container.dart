import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';

class TextIconContainer extends StatelessWidget {
  const TextIconContainer({
    super.key,
    required this.text,
    required this.icon,
    this.isSuffixIconVisible = true,
  });

  final String text;
  final IconData icon;
  final bool isSuffixIconVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 37,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: ColorConstants.subMainColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: ColorConstants.fontColor,
              size: 25,
            ),
            SizedBox(width: 5),
            Text(
              text,
              style: TextStyle(
                color: ColorConstants.fontColor,
                fontSize: 17.8,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.2,
                wordSpacing: -0.5,
              ),
            ),
            SizedBox(width: 5),
            Visibility(
              visible: isSuffixIconVisible,
              child: Icon(
                Icons.keyboard_arrow_down,
                color: ColorConstants.fontColor,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
