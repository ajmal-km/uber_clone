import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';

class OptionTileWidget extends StatelessWidget {
  const OptionTileWidget({
    super.key,
    required this.optionIcon,
    required this.optionTitle,
    this.isTrailingVisible = true,
    this.optionSubtitle = "",
    this.isDividerVisible = true,
    this.onOptionTap,
  });

  final IconData optionIcon;
  final String optionTitle;
  final String optionSubtitle;
  final bool isTrailingVisible;
  final bool isDividerVisible;
  final void Function()? onOptionTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        InkWell(
          borderRadius: BorderRadius.circular(13),
          onTap: onOptionTap,
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 2),
            tileColor: ColorConstants.mainColor,
            leading: Icon(
              optionIcon,
              size: 28,
              color: ColorConstants.fontColor,
            ),
            title: Text(
              optionTitle,
              style: TextStyle(
                color: ColorConstants.fontColor,
                fontSize: 17,
                fontWeight: FontWeight.w800,
                letterSpacing: -0.4,
              ),
            ),
            subtitle: optionSubtitle == ""
                ? null
                : Text(
                    optionSubtitle,
                    maxLines: 2,
                    style: TextStyle(
                      color: ColorConstants.greyFont,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.4,
                    ),
                  ),
            trailing: isTrailingVisible
                ? Icon(
                    Icons.arrow_forward_ios,
                    color: ColorConstants.greyFont,
                    size: 18,
                  )
                : null,
          ),
        ),
        Visibility(
          visible: isDividerVisible,
          child: SizedBox(
            width: 358,
            child: Divider(
              height: 1.6,
              thickness: 1.6,
              color: ColorConstants.subMainColor,
            ),
          ),
        ),
      ],
    );
  }
}
