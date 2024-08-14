import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';
import 'package:uber_clone/utils/image_constants.dart';
import 'package:uber_clone/view/global_widgets/text_icon_container.dart';
import 'package:uber_clone/view/ride_booking_screen/widgets/search_text_field.dart';

class RideBookingScreen extends StatelessWidget {
  const RideBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.mainColor,
        surfaceTintColor: ColorConstants.mainColor,
        centerTitle: true,
        title: Text(
          "Plan your ride",
          style: TextStyle(
            color: ColorConstants.fontColor,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.4,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(ImageConstants.MAP_LARGE),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 155,
              decoration: BoxDecoration(
                color: ColorConstants.mainColor,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 37,
                    child: ListView(
                      padding: EdgeInsets.only(top: 4),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        TextIconContainer(
                          icon: Icons.access_time_filled,
                          text: "Pick up now",
                        ),
                        TextIconContainer(
                          icon: Icons.arrow_forward,
                          text: "One Way",
                        ),
                        TextIconContainer(
                          icon: Icons.person,
                          text: "For me",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SearchTextField(
                            placeHolderText: "Your Location",
                          ),
                          SizedBox(height: 3.5),
                          SearchTextField(
                            placeHolderText: "Where to?",
                            textFieldColor: ColorConstants.subMainColor,
                          ),
                        ],
                      ),
                      SizedBox(width: 6),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: ColorConstants.subMainColor,
                        child: Icon(
                          Icons.add,
                          size: 30,
                          color: ColorConstants.mainBlack,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
