import 'package:flutter/material.dart';
import 'package:uber_clone/utils/image_constants.dart';
import 'package:uber_clone/view/account_screen/account_screen.dart';
import 'package:uber_clone/view/activity_screen/activity_screen.dart';
import 'package:uber_clone/view/home_screen/home_screen.dart';
import 'package:uber_clone/view/services_screen/services_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ServicesScreen(),
    ActivityScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade600,
        backgroundColor: Colors.white,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
            screens[selectedIndex] = screens[value];
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, size: 19),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(ImageConstants.SERVICES_ICON),
              size: 26,
            ),
            label: "Services",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(ImageConstants.ACTIVITY_ICON),
            ),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(ImageConstants.ACCOUNT_ICON),
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
