import 'package:uber_clone/utils/image_constants.dart';

class DummyDb {
  static const List<Map> serviceContent = [
    {"icon": ImageConstants.UBER_RIDE, "text": "Ride"},
    {"icon": ImageConstants.UBER_PACKAGE, "text": "Package"},
    {"icon": ImageConstants.UBER_RENT, "text": "Rental"},
    {"icon": ImageConstants.UBER_RESERVE, "text": "Reserve"},
    {"icon": ImageConstants.UBER_PACKAGE, "text": "Shuttle"},
    {"icon": ImageConstants.UBER_INTENSITY, "text": "Intensity"},
    {"icon": ImageConstants.UBER_TRAVEL, "text": "Travel"}
  ];

  static const List<Map> saveUber = [
    {
      "image": ImageConstants.RECTANGLE_1,
      "title": "Uber Moto rides",
      "subtitle": "Affordable motorcycle pick-ups",
    },
    {
      "image": ImageConstants.RECTANGLE_2,
      "title": "Shuttle rides",
      "subtitle": "Low fares, premium",
    },
  ];

  static const List<Map> planUber = [
    {
      "image": ImageConstants.RECTANGLE_3,
      "title": "Travel Intensity",
      "subtitle": "Get to remote locations with ease",
    },
    {
      "image": ImageConstants.RECTANGLE_4,
      "title": "Hourly rentals",
      "subtitle": "Ride from 1 to 12",
    },
  ];

  static const List<Map> useUber = [
    {
      "image": ImageConstants.RECTANGLE_3,
      "title": "Safety Tookit",
      "subtitle": "On-trip help with safety issues",
    },
    {
      "image": ImageConstants.RECTANGLE_4,
      "title": "Send a Package",
      "subtitle": "One-demand delivering town",
    },
  ];
}
