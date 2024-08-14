import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';
import 'package:uber_clone/view/global_widgets/content_widget.dart';

class PickupTimeScreen extends StatelessWidget {
  const PickupTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainColor,
        surfaceTintColor: ColorConstants.mainColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            size: 36,
            color: ColorConstants.fontColor,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "When do you want to\n be picked up?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstants.fontColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -1,
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Thu, Aug 1",
                    style: TextStyle(
                      color: ColorConstants.fontColor,
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.4,
                      wordSpacing: -1,
                    ),
                  ),
                  SizedBox(height: 24),
                  Divider(
                    height: 3,
                    thickness: 3,
                    endIndent: 50,
                    indent: 50,
                    color: ColorConstants.subMainColor,
                  ),
                  SizedBox(height: 24),
                  Text(
                    "5:58 PM",
                    style: TextStyle(
                      color: ColorConstants.fontColor,
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.4,
                      wordSpacing: -1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ContentWidget(),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text(
              "See terms",
              style: TextStyle(
                color: ColorConstants.fontColor,
                fontSize: 15,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.1,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ColorConstants.mainBlack,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Set pickup time",
                style: TextStyle(
                  color: ColorConstants.mainColor,
                  fontSize: 16.5,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
