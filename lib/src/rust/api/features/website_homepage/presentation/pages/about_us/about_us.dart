import 'package:education_system/config/routes/routes.dart';
import 'package:education_system/config/themes/theme_config.dart';
import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(
              AppImages.aboutUs,
              width: context.getWidth(),
              height: context.getHeight() - 160,
              fit: BoxFit.cover,
            ),
            // Divider(
            //   thickness: 4,
            //   color: AppColors.blue,
            // ),
            Positioned(
              width: context.getWidth(),
              bottom: context.getHeight() / 3 - 240,
              child: Container(
                height: 4,
                width: context.getWidth(),
                color: AppColors.blue,
              ),
            ),
            Positioned(
              bottom: context.getWidth() / 3 - 340,
              child: SizedBox(
                width: context.getWidth() / 2 + 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: AppColors.textBlackBold,
                        fontSize: 48,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome to the ',
                            style: GoogleFonts.inter(
                              color: AppColors.greyText,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                      TextSpan(
                        text: 'FEDERAL COLLEGE OF EDUCATION, INNOVATION, ',
                        style: GoogleFonts.inter(
                          color: AppColors.greyText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                          TextSpan(
                            text: 'where we believe in the transformative power of education. Our institution is dedicated to shaping the next generation of educators and leaders who will make a positive impact on the field of education and society as a whole. Here\'s an overview of what makes our college exceptional:',
                            style: GoogleFonts.inter(
                              color: AppColors.greyText,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Positioned(
            //   bottom: context.getWidth() / 3 - 350,
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //     child: SizedBox(
            //       width: context.getWidth() / 2,
            //       child: Text("Seee"),
            //     ),
            //   ),)
          ],
        ),
      ),
    );
  }
}

