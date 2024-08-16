import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';
import 'package:uber_clone/view/global_widgets/option_tile_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainColor,
      appBar: _buildAppBarSection(context),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 40,
                  backgroundColor: ColorConstants.subMainColor,
                  child: Icon(
                    Icons.person,
                    color: ColorConstants.greyFont,
                    size: 65,
                  ),
                ),
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "User",
                        style: TextStyle(
                          color: ColorConstants.fontColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.25,
                        ),
                      ),
                      Text(
                        "+91 95329 02459",
                        style: TextStyle(
                          color: ColorConstants.greyFont,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.2,
                        ),
                      ),
                      Text(
                        "user123@gmail.com",
                        style: TextStyle(
                          color: ColorConstants.greyFont,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.2,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  color: ColorConstants.greyFont,
                  size: 26,
                ),
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10),
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12, bottom: 7),
                child: Text(
                  "App Settings",
                  style: TextStyle(
                    color: ColorConstants.fontColor,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1,
                  ),
                ),
              ),
              OptionTileWidget(optionIcon: Icons.home, optionTitle: "Add Home"),
              OptionTileWidget(optionIcon: Icons.work, optionTitle: "Add Work"),
              OptionTileWidget(
                  optionIcon: Icons.pin_drop, optionTitle: "Shortcuts"),
              OptionTileWidget(
                optionIcon: Icons.lock,
                optionTitle: "Privacy",
                optionSubtitle: "Manage the data you share with us",
              ),
              OptionTileWidget(
                optionIcon: Icons.color_lens,
                optionTitle: "Appearance",
                optionSubtitle: "Use device settings",
              ),
              OptionTileWidget(
                optionIcon: Icons.text_snippet,
                optionTitle: "Invoice information",
                optionSubtitle: "Manages tax invoices information",
              ),
              OptionTileWidget(
                optionIcon: Icons.stay_current_portrait,
                optionTitle: "Communications",
                optionSubtitle:
                    "Choose your preferred contact methods and manage your notifications settings",
                isDividerVisible: false,
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBarSection(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConstants.mainColor,
      surfaceTintColor: ColorConstants.mainColor,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        iconSize: 30,
        icon: Icon(
          Icons.arrow_back,
          color: ColorConstants.mainBlack,
        ),
      ),
      titleSpacing: 0,
      title: Text(
        "Settings",
        style: TextStyle(
          color: ColorConstants.fontColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.6,
        ),
      ),
    );
  }
}
