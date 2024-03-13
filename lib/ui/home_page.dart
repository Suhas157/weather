import 'package:demo_dec/res.dart';
import 'package:demo_dec/ui/bottom_sheet/location_search_page.dart';
import 'package:demo_dec/ui/bottom_sheet/setting_page.dart';
import 'package:demo_dec/values/style.dart';
import 'package:flutter/material.dart';

import '../values/colors.dart';
import 'bottom_sheet/dashboard_page.dart';
import 'bottom_sheet/forcast_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    DashboardPage(showLoading: true),
    ForcastPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
          /*  appBar: AppBar(
          title: const Text('BottomNavigationBar Demo'),
        ),*/
          body: Center(
            child: _pages.elementAt(_selectedIndex), //New
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColor.primaryColorDark,
            unselectedItemColor: AppColor.secondaryColor,
            selectedIconTheme:
                IconThemeData(color: AppColor.white.withOpacity(1)),
            selectedItemColor: AppColor.white,
            selectedLabelStyle: textRegular,
            showSelectedLabels: true,
            // Show labels only for selected icon
            showUnselectedLabels: false,
            // Hide labels for unselected icons
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: AppColor.white.withOpacity(0.8),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.cloud_circle,
                  color: AppColor.white.withOpacity(0.8),
                ),
                label: 'Forecast',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: AppColor.white.withOpacity(0.8),
                ),
                label: 'Setting',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          )),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
