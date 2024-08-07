import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bizi/components/constants/app_color.dart';
import 'package:bizi/components/constants/constants.dart';
import 'package:bizi/pages/favorites/favorites_page.dart';
import 'package:bizi/pages/home/home_page.dart';
import 'package:bizi/pages/search/search_page.dart';
import 'package:bizi/pages/setting/setting_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedTabIndex = 0;

  final _pageOption = [
    const HomePage(),
    const FavoritesPage(),
    const SearchPage(),
    const SettingPage()
  ];
  final _barTitle = [
    'Bizi',
    "Favories",
    "Search",
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            CupertinoSliverNavigationBar(
              largeTitle: Text(
                _barTitle[_selectedTabIndex],
                style: kHeadingTextStyle,
              ),
              backgroundColor: AppColor.backgroundColor,
            ),
          ];
        },
        body: _pageOption[_selectedTabIndex],
      ),
      bottomNavigationBar: Container(
        color: AppColor.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: AppColor.backgroundColor,
            color: AppColor.primaryDark,
            activeColor: AppColor.primaryDark,
            tabBackgroundColor: Colors.grey.shade200,
            padding: const EdgeInsets.all(16),
            gap: 8,
            onTabChange: (int index) {
              setState(() {
                _selectedTabIndex = index;
              });
            },
            tabs: [
              GButton(
                icon: Icons.home,
                text: _barTitle[_selectedTabIndex],
              ),
              GButton(
                icon: Icons.calendar_month_rounded,
                text: _barTitle[_selectedTabIndex],
              ),
              GButton(
                icon: Icons.search,
                text: _barTitle[_selectedTabIndex],
              ),
              GButton(
                icon: Icons.settings,
                text: _barTitle[_selectedTabIndex],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
