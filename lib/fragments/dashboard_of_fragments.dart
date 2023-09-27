
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:kitaabi/fragments/explore/explore_fragment_screen.dart';
import 'package:kitaabi/fragments/profile_fragment_screen.dart';
import 'package:flutter/material.dart';
import 'attending/attending_fragment_screen.dart';
import 'ai_chat_fragment_screen.dart';

class DashboardOfFragments extends StatefulWidget {
  DashboardOfFragments({Key? key}) : super(key: key);

  @override
  State<DashboardOfFragments> createState() => _DashboardOfFragmentsState();
}

class _DashboardOfFragmentsState extends State<DashboardOfFragments> {
  // CurrentUser _rememberCurrentUser = Get.put(CurrentUser());
  List<Widget> _fragmentScreens = [
   ExploreFragmentScreen1(),
    AttendiingFragmentScreen(),
    AIChatFragmentScreen(),
   ProfileFragmentScreen(),
  ];

  List _navigationButtonsProperties = [
    {
      "active_icon": Icons.home,
      "non_active_icon": Icons.home_outlined,
      "label": "Explore",
    },
    {
      "active_icon": Icons.favorite,
      "non_active_icon": Icons.favorite_outline,
      "label": "Attending",
    },
    {
      "active_icon": FontAwesomeIcons.boxOpen,
      "non_active_icon": FontAwesomeIcons.box,
      "label": "AI chat",
    },
    {
      "active_icon": Icons.person,
      "non_active_icon": Icons.person_outline,
      "label": "Profile",
    },
  ];

  int _indexNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:
      BottomNavigationBar(
        currentIndex: _indexNumber,
        onTap: (value) {
         setState(() {
           _indexNumber= value;
         });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        items: List.generate(
          4,
              (index) {
            var navBarProp = _navigationButtonsProperties[index];
            return BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(navBarProp["non_active_icon"],color: Color(0xff9DB2CE),),
              activeIcon: Icon(navBarProp["active_icon"]),
              label: navBarProp["label"],
            );
          },
        ),
      ),

      body: SafeArea(
        child:
              _fragmentScreens[_indexNumber],

      ),
    );
  }
}
