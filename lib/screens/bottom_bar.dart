import 'package:fluentui_icons/fluentui_icons.dart';
import "package:flutter/material.dart";
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:ticket_booking_app/screens/home_screen.dart';
import 'package:ticket_booking_app/screens/profile_screen.dart';
import 'package:ticket_booking_app/screens/search_screen.dart';
import 'package:ticket_booking_app/screens/ticket_screen.dart';
import 'package:ticket_booking_app/utils/ownstyles.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  late PersistentTabController _controller;


  // int _selectedIndex = 0;
  final List<Widget>_widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  // void _onItemTapped(index){
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }


  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_controller.index],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex ,
      //   onTap: _onItemTapped,
      //   elevation: 10,
      //   selectedItemColor: Colors.blueGrey,
      //   unselectedItemColor: const Color(0xFF526480),
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   // type: BottomNavigationBarType.fixed,
      //   items: const[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       activeIcon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       activeIcon: Icon(FluentSystemIcons.ic_fluent_search_info_filled),
      //       label: "Search",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
      //       activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
      //       label: "Ticket",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline),
      //       activeIcon: Icon(Icons.person),
      //       label: "Profile",
      //     ),
      //   ],
      // ),
      bottomNavigationBar: PersistentTabView(
        context,
        backgroundColor: Own_Styles.ownBgColor,
        controller: _controller,
        screens: _widgetOptions,
        resizeToAvoidBottomInset: true,
        hideNavigationBarWhenKeyboardShows: true,
        navBarHeight: 75,
        items: [
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.home),
            title: "Home",
            activeColorPrimary: Colors.green,
            inactiveColorPrimary: Colors.grey,
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            iconSize: 28,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.search),
            title: "Search",
            activeColorPrimary: Colors.purpleAccent,
            inactiveColorPrimary: Colors.grey,
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            iconSize: 28,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            title: "Ticket",
            activeColorPrimary: Colors.orangeAccent,
            inactiveColorPrimary: Colors.grey,
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            iconSize: 28,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.person),
            title: "Profile",
            activeColorPrimary: Colors.redAccent,
            inactiveColorPrimary: Colors.grey,
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            iconSize: 28,
          ),
        ],
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Own_Styles.ownBgColor,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1,
      ),
    );
  }
}
