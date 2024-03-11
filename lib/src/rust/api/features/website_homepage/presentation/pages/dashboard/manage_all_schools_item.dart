import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../../config/themes/theme_config.dart';
import '../../../../../../../../core/utils/constants.dart';

class ManageAllSchoolsItem extends StatelessWidget {
  const ManageAllSchoolsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          height: 176,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: SizedBox(
                    width: context.getWidth() / 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: context.getWidth() / 3 - 20,
                          child: Text(
                            "Manage all school activities, from here and enjoy the experience.",
                            style: GoogleFonts.inter(
                              color: AppColors.green,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "This dashboard helps provides you with numerous options to better manage users experience across the app. Need assistance? Check out the help section or contact support. Happy exploring!",
                          style: GoogleFonts.inter(
                            color: AppColors.greyText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Image.asset(AppImages.studentGrads)
            ],
          ),
        ),
      ),
    );
  }
}
