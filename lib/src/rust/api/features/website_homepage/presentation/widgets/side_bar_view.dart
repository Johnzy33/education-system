import 'package:education_system/config/routes/routes.dart';
import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/side_bar_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DashboardSideView extends StatefulWidget {
  const DashboardSideView({super.key});

  @override
  State<DashboardSideView> createState() => _DashboardSideViewState();
}

class _DashboardSideViewState extends State<DashboardSideView> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: context.getWidth(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        AppImages.appLogo,
                        width: 100,
                        height: 100,
                      ),
                      SideBarTextView(
                        title: 'Overview',
                        onTap: () {
                          navigationService.navigateTo(AppRoutes.authProfile);
                        },
                      ),

                      SideBarTextView(
                        title: 'Exam Calendar',
                        onTap: () {},
                      ),

                      SideBarTextView(
                        title: 'Reserve a seat',
                        onTap: () {},
                      ),

                      SideBarTextView(
                        title: 'Attendance Register',
                        onTap: () {},
                      ),

                      SideBarTextView(
                        title: "Exam Certificate",
                        onTap: () {
                          navigationService.navigateTo(AppRoutes.webLogin);
                        },
                      ),

                      SideBarTextView(
                        title: "Library Service",
                        onTap: () {
                          navigationService.navigateTo(AppRoutes.webLogin);
                        },
                      ),
                      SideBarTextView(
                        title: "Payment",
                        onTap: () {
                          navigationService.navigateTo(AppRoutes.webLogin);
                        },
                      ),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SideBarTextView(
                                title: "Settings",
                                onTap: () {
                                  navigationService.navigateTo(AppRoutes.webLogin);
                                },
                              ),
                              const SizedBox(width: 70,),
                              Image.asset(
                                AppImages.iconUp,
                                width: 20,
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Gap(15),
                    ],
                  ),
                ),
              ),
              _studentInformation(context),

            ],
          ),
        ),
      ),
    );
  }
}


Widget _studentInformation(BuildContext context){
  return Container(
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
  );
}

