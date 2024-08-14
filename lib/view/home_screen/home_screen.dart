import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';
import 'package:uber_clone/utils/image_constants.dart';
import 'package:uber_clone/view/dummy_db.dart';
import 'package:uber_clone/view/global_widgets/service_grid.dart';
import 'package:uber_clone/view/home_screen/widgets/info_builder.dart';
import 'package:uber_clone/view/pickup_time_screen/pickup_time_screen.dart';
import 'package:uber_clone/view/ride_booking_screen/ride_booking_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarSection(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Container(
                  height: 58,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: ColorConstants.subMainColor,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RideBookingScreen(),
                            ),
                          );
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.search_rounded,
                              color: ColorConstants.mainBlack,
                              size: 25,
                            ),
                            SizedBox(width: 12.47),
                            Text(
                              "Where to?",
                              style: TextStyle(
                                color: ColorConstants.greyFont,
                                fontSize: 18.28,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PickupTimeScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 37,
                          width: 110,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: ColorConstants.mainColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.access_time_filled,
                                color: ColorConstants.mainBlack,
                                size: 21,
                              ),
                              Text(
                                "Now",
                                style: TextStyle(
                                  color: ColorConstants.fontColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: ColorConstants.mainBlack,
                                size: 24,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      "Suggestions",
                      style: TextStyle(
                        color: ColorConstants.fontColor,
                        fontFamily: "Uber Move",
                        fontVariations: <FontVariation>[
                          FontVariation.weight(800),
                        ],
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.6,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        //
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: ColorConstants.fontColor,
                          fontSize: 15.2,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.3,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                ServicesGrid(),
                SizedBox(height: 25),
                _buildLargeContainerSection(),
              ],
            ),
          ),
          InfoBuilder(
            title: "Ways to save with Uber",
            imageList: DummyDb.saveUber,
          ),
          InfoBuilder(
            title: "Ways to plan with Uber",
            imageList: DummyDb.planUber,
          ),
          InfoBuilder(
            title: "Ways to use with Uber",
            imageList: DummyDb.useUber,
          ),
          AroundYouMap(),
        ],
      ),
    );
  }

  Widget _buildLargeContainerSection() {
    return Stack(
                children: <Widget>[
                  Container(
                    height: 140,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: ColorConstants.homeContainerColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Confortable Sedan\nRide",
                          style: TextStyle(
                            color: ColorConstants.mainColor,
                            fontSize: 20.4,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 7),
                        Row(
                          children: <Widget>[
                            Text(
                              "Book premium",
                              style: TextStyle(
                                color: ColorConstants.mainColor,
                                fontSize: 18.4,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward,
                                color: ColorConstants.mainColor, size: 23),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 140,
                      decoration: BoxDecoration(
                        color: Color(0xff9a7A3a),
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(12),
                        ),
                      ),
                      child: Image.asset(
                        ImageConstants.CONTAINER_IMG,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              );
  }

  AppBar _appBarSection() {
    return AppBar(
      backgroundColor: ColorConstants.mainColor,
      surfaceTintColor: ColorConstants.mainColor,
      title: Text(
        "Uber",
        style: TextStyle(
          color: ColorConstants.fontColor,
          fontSize: 35,
          fontWeight: FontWeight.w700,
          letterSpacing: -1.8,
        ),
      ),
    );
  }
}

class AroundYouMap extends StatelessWidget {
  const AroundYouMap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 25, bottom: 10, left: 10, right: 10),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Text(
          "Around you",
          style: TextStyle(
            color: ColorConstants.fontColor,
            fontSize: 23,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.5,
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 198,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(ImageConstants.AROUND_MAP),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
