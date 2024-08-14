import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';
import 'package:uber_clone/view/global_widgets/content_widget.dart';

class ReserveScreen extends StatelessWidget {
  const ReserveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.network(
                "https://i.pinimg.com/236x/c4/04/6b/c4046b8796349a524e841960ec6d45f1.jpg",
                height: 350,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 50,
                left: 15,
                child: IconButton.filled(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(ColorConstants.greyFont)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back,
                      size: 26, color: ColorConstants.mainBlack),
                ),
              )
            ],
          ),
          SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Reserve",
                  style: TextStyle(
                    color: ColorConstants.fontColor,
                    fontSize: 44,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1.7,
                  ),
                ),
              ),
              ContentWidget(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 13, right: 13, bottom: 15),
        child: Container(
          height: 53,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ColorConstants.mainBlack,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            "Reserve a ride",
            style: TextStyle(
              color: ColorConstants.mainColor,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.4,
            ),
          ),
        ),
      ),
    );
  }
}
