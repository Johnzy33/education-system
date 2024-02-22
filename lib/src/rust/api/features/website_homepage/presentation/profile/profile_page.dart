//TODO: Integrate the themes file for this page.

//* Highlights: Please the pages should contain purely only view components, every widget components should be moved to the widget view part

//! Alerts: All functions and class should be written to handle one and one purpose alone, this is to help in writing test

import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/deadlines.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/faculties_and_schools.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/find_choice_course.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/footer.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/information_page.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/learn_more_about_the_school.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/research.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/web_top_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/auth.profile.dart';
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
    return  Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AuthProfile(),
                StudentInformation(),



              ],
            ),
          )),
    );
  }
}
