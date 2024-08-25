import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';
import 'package:uber_clone/view/global_widgets/service_grid.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainColor,
        surfaceTintColor: ColorConstants.mainColor,
        title: Text(
          "Services",
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
          SizedBox(height: 10),
          Text(
            "Go anywhere, get anything",
            style: TextStyle(
              color: ColorConstants.fontColor,
              fontSize: 21,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.6,
            ),
          ),
          SizedBox(height: 25),
          ServicesGrid(),
        ],
      ),
    );
  }
}
