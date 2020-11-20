import 'package:doctors_app/app/size_configuration.dart';
import 'package:doctors_app/screens/homeScreen/addRevisitScreen/addRevisitScreenView.dart';
import 'package:doctors_app/theme/theme.dart';
import 'package:doctors_app/widgets/reusables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PatientProfileScreenView extends StatefulWidget {
  static const routeName = "/patientProfileScreenView";

  @override
  _PatientProfileScreenViewState createState() =>
      _PatientProfileScreenViewState();
}

class _PatientProfileScreenViewState extends State<PatientProfileScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithLogo(context),
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (context) => Padding(
          padding: const EdgeInsets.all(30.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            buildOutlineButtonCustomizable(
                "Add Revisit",
                () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddRevisitScreenView()),
                      )
                    },
                10.0,
                14.0,
                Colors.blue[900],
                false),
            buildOutlineButtonCustomizable(
                "Completed", () {}, 10.0, 14.0, primaryColor, false)
          ]),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Text(
                "Patient Details",
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    top: getProportionateScreenHeight(50),
                    child: Container(
                      decoration: getUpperRoundedBorder(offWhite),
                      width: SizeConfig.screenWidth,
                      height: getProportionateScreenHeight(120),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Agnideep Sengupta",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text("21 years"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.transparent,
                    child: CircleAvatar(
                      radius: 100.0,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/474x/2e/17/2c/2e172cfc7c4a3c10114726bf1ce2b211.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(100),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Feather.user),
                    title: Text(
                      "Gender",
                      style: TextStyle(fontSize: 12),
                    ),
                    subtitle: Text(
                      "Male",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    leading: Icon(AntDesign.calendar),
                    title: Text(
                      "DOB",
                      style: TextStyle(fontSize: 12),
                    ),
                    subtitle: Text(
                      "04-09-1998",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    leading: Icon(FontAwesome.phone),
                    title: Text(
                      "Contact",
                      style: TextStyle(fontSize: 12),
                    ),
                    subtitle: Text(
                      "8876977257",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    leading: Icon(MaterialCommunityIcons.email),
                    title: Text(
                      "E-mail",
                      style: TextStyle(fontSize: 12),
                    ),
                    subtitle: Text(
                      "agnideepsg02@gmail.com",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Entypo.drop),
                    title: Text(
                      "Blood group",
                      style: TextStyle(fontSize: 12),
                    ),
                    subtitle: Text(
                      "A +",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Address",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  Divider(),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: white, width: 0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(20.0),
                      title: Text("Agnideep Sengupta"),
                      subtitle: Text(
                          "Kedia Puram, VIP Colony, Hojai, Assam - 782435 Contact : 8876967257"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Vitals",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: SizeConfig.screenWidth / 2.6,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: offWhite2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Height",
                              style: TextStyle(color: blue, fontSize: 14),
                            ),
                            Text(
                              "5.8 feet",
                              style: TextStyle(color: offBlack1, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: SizeConfig.screenWidth / 2.6,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: offWhite2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(color: blue, fontSize: 14),
                            ),
                            Text(
                              "70 kg",
                              style: TextStyle(color: offBlack1, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: SizeConfig.screenWidth / 2.6,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: offWhite2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "BMI",
                                  style: TextStyle(color: blue, fontSize: 14),
                                ),
                                Text(
                                  "Normal",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 14),
                                )
                              ],
                            ),
                            Text(
                              "19.5",
                              style: TextStyle(color: offBlack1, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: SizeConfig.screenWidth / 2.6,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: offWhite2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Heart Rate",
                                  style: TextStyle(color: blue, fontSize: 14),
                                ),
                                Text(
                                  "Normal",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 14),
                                )
                              ],
                            ),
                            Text(
                              "72",
                              style: TextStyle(color: offBlack1, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: SizeConfig.screenWidth / 2.6,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: offWhite2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Pressure",
                                  style: TextStyle(color: blue, fontSize: 14),
                                ),
                                Text(
                                  "19",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 14),
                                )
                              ],
                            ),
                            Text(
                              "19.5",
                              style: TextStyle(color: offBlack1, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: SizeConfig.screenWidth / 2.6,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: offWhite2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "O2 Level",
                                  style: TextStyle(color: blue, fontSize: 14),
                                ),
                                Text(
                                  "Normal",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 14),
                                )
                              ],
                            ),
                            Text(
                              "98%",
                              style: TextStyle(color: offBlack1, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Alergies",
                        style: TextStyle(fontSize: 24),
                      ),
                      IconButton(icon: Icon(Icons.add), onPressed: () {})
                    ],
                  ),
                  Divider(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Disease",
                        style: TextStyle(fontSize: 24),
                      ),
                      IconButton(icon: Icon(Icons.add), onPressed: () {})
                    ],
                  ),
                  Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
