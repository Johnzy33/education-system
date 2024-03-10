import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../../../config/themes/theme_config.dart';

class OurVisionTextItem extends StatelessWidget {
  const OurVisionTextItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 140),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Our Vision',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: AppColors.textBlackBold,
              fontSize: 48,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '“Shaping the next generation of educators and leaders who will make positive impact on the field of education and society as a whole through innovative approaches”',
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