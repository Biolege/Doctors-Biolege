import 'package:doctors_app/app/size_configuration.dart';
import 'package:doctors_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'appointmentScreen/appointmentHomeScreenView.dart';

class HomeScreenView extends StatefulWidget {
  static const routeName = "/homeScreenView";
  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  // --------------------------------------------------------------------------
  int _index = 0;
  final widgetOptions = [
    AppointmentHomeScreenView(),
    Text("ceoja"),
    Text('Notification'),
    Text('Profile'),
  ];

  List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: Icon(MaterialIcons.assignment), label: 'Appointments'),
    BottomNavigationBarItem(
        icon: Icon(FontAwesome5.building), label: 'My Chember'),
    BottomNavigationBarItem(
        icon: Icon(FontAwesome.bell), label: 'Notifications'),
    BottomNavigationBarItem(
        icon: Icon(FontAwesome.user_circle), label: 'Profile'),
  ];

  void setCurrentIndex(int selIndex) {
    setState(() {
      _index = selIndex;
    });
  }

  // --------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: SizeConfig.screenWidth / 3,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Icon(Icons.location_pin),
                Text(
                  "Dona clinic",
                  style: TextStyle(color: offBlack2),
                ),
              ],
            ),
          ),
          centerTitle: true,
          title: Text(
            "Today",
            style: TextStyle(color: offBlack1, fontSize: 18),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                logoPath,
                width: SizeConfig.screenWidth / 4.5,
              ),
            )
          ]),
      body: widgetOptions.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (selIndex) => setCurrentIndex(selIndex),
        iconSize: 18,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        selectedItemColor: primaryColor,
        unselectedItemColor: offBlack2,
        unselectedLabelStyle: TextStyle(color: offBlack2),
        items: items,
      ),
    );
  }
}
