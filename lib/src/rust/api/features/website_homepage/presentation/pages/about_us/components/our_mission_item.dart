import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../../../config/themes/theme_config.dart';

class OurMissionTextItem extends StatelessWidget {
  const OurMissionTextItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Our Mission',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: AppColors.textBlackBold,
              fontSize: 48,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Our mission is to prepare highly skilled and compassionate educators who possess the knowledge, skills, and values necessary to inspire and empower students to reach their full potential. We strive to promote equity, diversity, and inclusion in education and to foster lifelong learning among our graduates.',
            textAlign: TextAlign.center,
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