import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      padding: EdgeInsets.only(top: 20),
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.access_time_filled,
              color: ColorConstants.fontColor,
              size: 26,
            ),
            SizedBox(width: 20),
            Column(
              children: <Widget>[
                Text(
                  "Choose your exact pickup time up to 90\ndays in advance",
                  style: TextStyle(
                    color: ColorConstants.fontColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.2,
                  ),
                ),
                Divider(
                  color: ColorConstants.mainBlack,
                  height: 5,
                  thickness: 5,
                  indent: 50,
                  endIndent: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
