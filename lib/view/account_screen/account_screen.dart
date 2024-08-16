import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';
import 'package:uber_clone/view/global_widgets/option_tile_widget.dart';
import 'package:uber_clone/view/settings_screen/settings_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainColor,
        surfaceTintColor: ColorConstants.mainColor,
        toolbarHeight: 130,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "User",
              style: TextStyle(
                color: ColorConstants.fontColor,
                fontSize: 35,
                fontWeight: FontWeight.w700,
                letterSpacing: -1.8,
              ),
            ),
            SizedBox(height: 3),
            Container(
              height: 30,
              width: 66,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                color: ColorConstants.subMainColor,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.star_rounded,
                    color: ColorConstants.greyFont,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "5.0",
                    style: TextStyle(
                      color: ColorConstants.greyFont,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        actions: <Widget>[
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey[300],
            child: Icon(
              Icons.person,
              color: ColorConstants.greyFont,
              size: 58,
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ProfileOptions(
                    gridText: "Help",
                    gridIcon: Icons.help_outlined,
                  ),
                  SizedBox(width: 14),
                  ProfileOptions(
                    gridText: "Payment",
                    gridIcon: Icons.payment_rounded,
                  ),
                  SizedBox(width: 14),
                  ProfileOptions(
                    gridText: "Activity",
                    gridIcon: Icons.assignment,
                  ),
                ],
              ),
              SizedBox(height: 20),
              ProfileContainer(
                title: "You have multiple promos",
                subtitle: "We'll automatically apply the one that\nsaves you t",
                containerIcon: Icons.percent_rounded,
              ),
              SizedBox(height: 15),
              ProfileContainer(
                title: "Safety checkup",
                subtitle: "Learn ways to make rider safer.",
                containerIcon: Icons.safety_check_outlined,
              ),
              SizedBox(height: 15),
              ProfileContainer(
                title: "Privacy check up",
                subtitle: "Take an interactive tour of your privacy\nsettings",
                containerIcon: Icons.privacy_tip,
              ),
            ],
          ),
          Divider(
            color: ColorConstants.subMainColor,
            thickness: 4.5,
          ),
          SizedBox(height: 6),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 10),
            children: <Widget>[
              OptionTileWidget(
                optionIcon: Icons.settings,
                optionTitle: "Settings",
                isTrailingVisible: false,
                isDividerVisible: false,
                onOptionTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsScreen(),
                    ),
                  );
                },
              ),
              OptionTileWidget(
                optionIcon: Icons.email,
                optionTitle: "Messages",
                isTrailingVisible: false,
                isDividerVisible: false,
              ),
              OptionTileWidget(
                optionIcon: Icons.wallet_giftcard_outlined,
                optionTitle: "Send a gift",
                isTrailingVisible: false,
                isDividerVisible: false,
              ),
              OptionTileWidget(
                optionIcon: Icons.person_sharp,
                optionTitle: "Earn by driving or delivering",
                isTrailingVisible: false,
                isDividerVisible: false,
              ),
              OptionTileWidget(
                optionIcon: Icons.business_center,
                optionTitle: "Setup your bussiness profile",
                isTrailingVisible: false,
                isDividerVisible: false,
              ),
              OptionTileWidget(
                optionIcon: Icons.person,
                optionTitle: "Manage Uber account",
                isTrailingVisible: false,
                isDividerVisible: false,
              ),
              OptionTileWidget(
                optionIcon: Icons.info,
                optionTitle: "Legal",
                isTrailingVisible: false,
                isDividerVisible: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.containerIcon,
  });

  final String title;
  final String subtitle;
  final IconData containerIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(13),
      onTap: () {
        //
      },
      child: Container(
        height: 110,
        padding: EdgeInsets.all(17),
        decoration: BoxDecoration(
          color: ColorConstants.subMainColor,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    color: ColorConstants.fontColor,
                    fontSize: 17.4,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.2,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: ColorConstants.greyFont,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              containerIcon,
              color: ColorConstants.fontColor,
              size: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({
    super.key,
    required this.gridText,
    required this.gridIcon,
  });

  final String gridText;
  final IconData gridIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(17),
        onTap: () {
          //
        },
        child: Container(
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ColorConstants.subMainColor,
            borderRadius: BorderRadius.circular(17),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                gridIcon,
                size: 35,
                color: ColorConstants.mainBlack,
              ),
              SizedBox(height: 6),
              Text(
                gridText,
                style: TextStyle(
                  color: ColorConstants.fontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
