import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';
import 'package:uber_clone/view/dummy_db.dart';
import 'package:uber_clone/view/reserve_screen/reserve_screen.dart';
import 'package:uber_clone/view/ride_booking_screen/ride_booking_screen.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      RideBookingScreen(),
      Container(color: Colors.red),
      Container(color: Colors.blue),
      ReserveScreen(),
    ];
    return SizedBox(
      height: 95,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => SizedBox(width: 9.5),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => screens[index],
              ),
            );
          },
          child: Container(
            width: 90,
            decoration: BoxDecoration(
              color: ColorConstants.subMainColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(DummyDb.serviceContent[index]["icon"]),
                Text(
                  DummyDb.serviceContent[index]["text"],
                  style: TextStyle(
                    color: ColorConstants.fontColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
