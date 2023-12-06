import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/themes/theme_config.dart';

class LearnMoreAboutSchoolPage extends StatefulWidget {
  const LearnMoreAboutSchoolPage({super.key});

  @override
  State<LearnMoreAboutSchoolPage> createState() =>
      _LearnMoreAboutSchoolPageState();
}

class _LearnMoreAboutSchoolPageState extends State<LearnMoreAboutSchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 39.5,
          ),
          Text(
            'Learn more about the School',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: AppColors.boldText,
              fontSize: 47,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 39.5,
          ),
          SizedBox(
              width: context.getWidth(),
              height: context.getHeight() / 2 + 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 90.0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return const AboutSchoolItems();
                    }),
              )),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

class AboutSchoolItems extends StatelessWidget {
  const AboutSchoolItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 384,
      height: context.getHeight() / 3,
      padding: const EdgeInsets.only(right: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 384,
            height: 240,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage(AppImages.studentHoldingBooks),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'Olivia Rhye • 20 Jan 2022',
            style: GoogleFonts.inter(
              color: AppColors.blue,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Text(
                'Quality',
                style: GoogleFonts.inter(
                  color: AppColors.boldText,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              SvgPicture.asset(AppImages.arrowUpRight)
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'How do you create compelling presentations that wow your colleagues and impress your managers?',
            style: GoogleFonts.inter(
              color: AppColors.greyText,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
