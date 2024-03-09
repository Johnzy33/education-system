import 'package:education_system/config/routes/routes.dart';
import 'package:education_system/config/themes/theme_config.dart';
import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/pages/about_us/components/welcome_item.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/pages/about_us/components/our_mission_item.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/pages/about_us/components/our_vision_item.dart';
import 'package:flutter/material.dart';

import '../../widgets/footer.dart';
import '../../widgets/web_top_bar.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WebTopBarView(
          onLogoClicked: () {
            debugPrint("onLogoClicked");
            navigationService.navigateTo(AppRoutes.home);
          },
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AppImages.aboutUs,
                width: context.getWidth(),
                height: context.getHeight() / 2 + 180,
                fit: BoxFit.cover,
              ),
              Container(
                height: 4,
                width: context.getWidth(),
                color: AppColors.blue,
              ),
              // Positioned(
              //   bottom: 100,
              //   child: SvgPicture.asset(
              //     AppImages.microscope,
              //   ),
              // ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 38),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AboutWelcomeTextItem(),
                    OurMissionTextItem(),
                    OurVisionTextItem()

                  ],
                ),
              ),
              const FooterPage(),
            ],
          ),
        ),
      ),
    );
  }
}

