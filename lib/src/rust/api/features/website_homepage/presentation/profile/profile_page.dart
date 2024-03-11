//TODO: Integrate the themes file for this page.

//* Highlights: Please the pages should contain purely only view components, every widget components should be moved to the widget view part

//! Alerts: All functions and class should be written to handle one and one purpose alone, this is to help in writing test

import 'package:flutter/material.dart';

import '../widgets/side_bar_view.dart';
import '../widgets/student_information.dart';

class ProfilePage extends StatefulWidget {
   const ProfilePage({super.key});


  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late double _deviceHeight, _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DashboardSideView(
                  fullContent: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.75,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                              'Your Text',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), pageTitle: '',
                ),
                const StudentInformation(),
              ],
            ),
          )),
    );
  }
}
