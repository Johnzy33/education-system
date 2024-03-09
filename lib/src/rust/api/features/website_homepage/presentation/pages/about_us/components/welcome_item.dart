import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../../../config/themes/theme_config.dart';

class AboutWelcomeTextItem extends StatelessWidget {
  const AboutWelcomeTextItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 120),
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
            textAlign: TextAlign.center,
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
    );
  }
}