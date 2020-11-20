import 'package:doctors_app/app/size_configuration.dart';
import 'package:doctors_app/theme/theme.dart';
import 'package:doctors_app/widgets/reusables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AddRevisitScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithLogoAndText(context, "", Text("Today")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "      Confirm Booking     ",
          style: TextStyle(color: white),
        ),
        onPressed: () => null,
        backgroundColor: primaryColor,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Provide next appointment date",
                    style: TextStyle(
                        fontSize: 20, color: blue, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Entypo.location_pin,
                            color: blue,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(20),
                          ),
                          Text(
                            "Select Address",
                            style: TextStyle(color: offBlack2),
                          )
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: white,
                                width: 0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 30,
                              ),
                              onTap: () {},
                              title: Text("Star city hospital"),
                              subtitle: Text("Thakur bari road, Hojai"),
                            ),
                          )),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      Row(
                        children: [
                          Icon(
                            AntDesign.calendar,
                            color: blue,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(20),
                          ),
                          Text(
                            "Select Date",
                            style: TextStyle(color: offBlack2),
                          )
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildBasicOutlineButtonWithLessPaddingAndRounderCorners(
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "Monday",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      "July 25",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                              () {}),
                          buildBasicOutlineButtonWithLessPaddingAndRounderCorners(
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "Monday",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      "July 25",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                              () {}),
                          buildBasicOutlineButtonWithLessPaddingAndRounderCorners(
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "Monday",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      "July 25",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                              () {}),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            AntDesign.clockcircle,
                            color: blue,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(20),
                          ),
                          Text(
                            "Select Time Slot",
                            style: TextStyle(color: offBlack2),
                          )
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildBasicOutlineButtonWithLessPaddingAndRounderCorners(
                              Text(
                                "Morning",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w300),
                              ),
                              () {}),
                          buildBasicOutlineButtonWithLessPaddingAndRounderCorners(
                              Text(
                                "Noon",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w300),
                              ),
                              () {}),
                          buildBasicOutlineButtonWithLessPaddingAndRounderCorners(
                              Text(
                                "Evening",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w300),
                              ),
                              () {}),
                          buildBasicOutlineButtonWithLessPaddingAndRounderCorners(
                              Text(
                                "Night",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w300),
                              ),
                              () {}),
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildBasicOutlineButtonWithLessPaddingAndRounderCorners(
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  "09:30 AM",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              () {}),
                          buildBasicOutlineButtonWithLessPaddingAndRounderCorners(
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  "10:00 AM",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                              ),
                              () {}),
                          buildBasicOutlineButtonWithLessPaddingAndRounderCorners(
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  "10:30 AM",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                              ),
                              () {}),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
