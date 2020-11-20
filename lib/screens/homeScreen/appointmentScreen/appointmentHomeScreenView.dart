import 'package:doctors_app/app/size_configuration.dart';
import 'package:doctors_app/screens/homeScreen/patientProfileScreen/patientProfileScreenView.dart';
import 'package:doctors_app/theme/theme.dart';
import 'package:flutter/material.dart';

class AppointmentHomeScreenView extends StatelessWidget {
  static const routeName = "/appointmentHomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          addAutomaticKeepAlives: true,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  height: getProportionateScreenHeight(150),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Appointments",
                        style: TextStyle(color: offWhite, fontSize: 20),
                      ),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(color: offWhite, fontSize: 12),
                              ),
                              Text(
                                "30",
                                style: TextStyle(color: offWhite, fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Completed",
                                style: TextStyle(color: offWhite, fontSize: 12),
                              ),
                              Text(
                                "30",
                                style: TextStyle(color: offWhite, fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Left",
                                style: TextStyle(color: offWhite, fontSize: 12),
                              ),
                              Text(
                                "30",
                                style: TextStyle(color: offWhite, fontSize: 15),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                      color: offWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  height: getProportionateScreenHeight(50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        color: Colors.transparent,
                        onPressed: () {},
                        child: Text(
                          "Schedule",
                          style: TextStyle(color: blue),
                        ),
                      ),
                      Container(
                        color: offWhite2,
                        height: 20,
                        width: 1,
                      ),
                      FlatButton(
                          onPressed: () {},
                          child: Text("Completed",
                              style: TextStyle(color: offBlack2))),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 30,
              ),
              // child: TextField(
              //   decoration: InputDecoration(
              //       border:
              //           UnderlineInputBorder(borderRadius: BorderRadius.zero),
              //       counter: Text(""),
              //       hintText: "Search",
              //       suffixIcon: Icon(Icons.search)),
              // ),
            ),
            Column(
              children: [
                ListTile(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PatientProfileScreenView()),
                    )
                  },
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  leading: CircleAvatar(
                    radius: 18.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text("Anwar Ali Khan"),
                  subtitle: Text("First visit"),
                  trailing: Text("11 AM"),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  leading: CircleAvatar(
                    radius: 18.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text("Anwar Ali Khan"),
                  subtitle: Text("First visit"),
                  trailing: Text("11 AM"),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  leading: CircleAvatar(
                    radius: 18.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text("Anwar Ali Khan"),
                  subtitle: Text("First visit"),
                  trailing: Text("11 AM"),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  leading: CircleAvatar(
                    radius: 18.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text("Anwar Ali Khan"),
                  subtitle: Text("First visit"),
                  trailing: Text("11 AM"),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  leading: CircleAvatar(
                    radius: 18.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text("Anwar Ali Khan"),
                  subtitle: Text("First visit"),
                  trailing: Text("11 AM"),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  leading: CircleAvatar(
                    radius: 18.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text("Anwar Ali Khan"),
                  subtitle: Text("First visit"),
                  trailing: Text("11 AM"),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  leading: CircleAvatar(
                    radius: 18.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text("Anwar Ali Khan"),
                  subtitle: Text("First visit"),
                  trailing: Text("11 AM"),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  leading: CircleAvatar(
                    radius: 18.0,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text("Anwar Ali Khan"),
                  subtitle: Text("First visit"),
                  trailing: Text("11 AM"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
