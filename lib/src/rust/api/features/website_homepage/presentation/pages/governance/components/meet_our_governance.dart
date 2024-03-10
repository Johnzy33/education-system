import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../../../config/themes/theme_config.dart';

class MeetOurGovernanceItem extends StatelessWidget {
  const MeetOurGovernanceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 240),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Meet Our Governance',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: AppColors.textBlackBold,
              fontSize: 36,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            'Our philosophy is simple — hire a team of diverse, passionate people and foster a culture that empowers you to do you best work.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: AppColors.greyText,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}