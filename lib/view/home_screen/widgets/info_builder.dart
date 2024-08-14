import 'package:flutter/material.dart';
import 'package:uber_clone/utils/color_constants.dart';

class InfoBuilder extends StatelessWidget {
  const InfoBuilder({
    super.key,
    required this.imageList,
    required this.title,
  });

  final String title;
  final List imageList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Text(
            title,
            style: TextStyle(
              color: ColorConstants.fontColor,
              fontSize: 21,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.6,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 190,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: imageList.length,
            padding: EdgeInsets.symmetric(horizontal: 10),
            separatorBuilder: (context, index) => SizedBox(width: 13),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  //
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 130,
                      width: 222,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imageList[index]["image"]),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Text(
                          imageList[index]["title"],
                          style: TextStyle(
                            color: ColorConstants.fontColor,
                            fontSize: 15.5,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(width: 6),
                        Icon(Icons.arrow_forward,
                            color: ColorConstants.fontColor, size: 23),
                      ],
                    ),
                    Text(
                      imageList[index]["subtitle"],
                      maxLines: 2,
                      style: TextStyle(
                        color: ColorConstants.greyFont,
                        fontSize: 14.3,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
