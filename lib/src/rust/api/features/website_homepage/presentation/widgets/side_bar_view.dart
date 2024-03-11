import 'package:education_system/config/routes/routes.dart';
import 'package:education_system/config/themes/theme_config.dart';
import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/dashboard_top_bar.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/side_bar_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class DashboardSideView extends StatefulWidget {
  const DashboardSideView({
    super.key, this.fullContent, required this.pageTitle});

  final Widget? fullContent;
  final String pageTitle;

  @override
  State<DashboardSideView> createState() => _DashboardSideViewState();
}

class _DashboardSideViewState extends State<DashboardSideView> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: SizedBox(
          width: context.getWidth(),
          height: context.getHeight(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SideBar(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DashBoardTopBar(title: widget.pageTitle,),
                    widget.fullContent  ?? Container()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth() / 5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 5,
            // offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.appLogo,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            SideBarTextView(
              title: 'Overview',
              onTap: () {

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
                SideBarTextView(
                  title: "Settings",
                  onTap: () {
                    navigationService.navigateTo(AppRoutes.dashboard);
                    // navigationService.navigateTo(AppRoutes.webLogin);
                  },
                ),
                const Spacer(),
                Expanded(
                  child: Image.asset(
                    AppImages.iconUp,
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            ),
            const Gap(15),
          ],
        ),
      ),
    );
  }
}



