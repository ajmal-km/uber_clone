import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';
import 'package:uber_clone/utils/image_constants.dart';
import 'package:uber_clone/view/global_widgets/text_icon_container.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainColor,
        surfaceTintColor: ColorConstants.mainColor,
        title: Text(
          "Activity",
          style: TextStyle(
            color: ColorConstants.fontColor,
            fontSize: 35,
            fontWeight: FontWeight.w700,
            letterSpacing: -1.8,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Past",
                style: TextStyle(
                  color: ColorConstants.fontColor,
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.4,
                ),
              ),
              Spacer(),
              IconButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    ColorConstants.subMainColor,
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.tune,
                  color: ColorConstants.fontColor,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: ColorConstants.greyFont),
              borderRadius: BorderRadius.circular(13),
            ),
            padding: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 135,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(ImageConstants.ACTIVITY_MAP),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "X7RP+VG6",
                  style: TextStyle(
                    color: ColorConstants.fontColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Uber Move",
                    letterSpacing: -1.3,
                  ),
                ),
                Text(
                  "15 Nov • 11:37 am",
                  style: TextStyle(
                    color: ColorConstants.greyFont,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1,
                  ),
                ),
                Text(
                  "₹390",
                  style: TextStyle(
                    color: ColorConstants.greyFont,
                    fontSize: 16.6,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.5,
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  children: <Widget>[
                    TextIconContainer(
                      icon: Icons.star_purple500_outlined,
                      text: "Rate",
                      isSuffixIconVisible: false,
                    ),
                    TextIconContainer(
                      icon: Icons.replay,
                      text: "Rebook",
                      isSuffixIconVisible: false,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
