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

class WebHomePage extends StatefulWidget {
  const WebHomePage({super.key});

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WebTopBarView(),
            FindChoiceCourse(),
            InformationPage(),
            FacultiesAndSchoolsPage(),
            DeadLinesPage(),
            ResearchPage(),
            LearnMoreAboutSchoolPage(),
            FooterPage()

          ],
        ),
      )),
    );
  }
}
