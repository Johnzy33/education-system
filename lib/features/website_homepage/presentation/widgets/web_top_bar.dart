import 'package:education_system/config/themes/theme_config.dart';
import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:education_system/features/website_homepage/presentation/widgets/get_in_touch_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebTopBarView extends StatelessWidget {
  const WebTopBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(),
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 7),
        child: Row(
          children: [
            Image.asset(
              AppImages.appLogo,
              width: 65,
              height: 65,
            ),
            const SizedBox(
              width: 8,
            ),
            SizedBox(
              width: 244,
              child: Text(
                'FEDERAL COLLEGE OF EDUCATION IDIDEP-IBIONO',
                style: GoogleFonts.inter(
                  color: const Color(0xFF02683B),
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(
              width: 35,
            ),
            Text(
              'Study',
              style: GoogleFonts.inter(
                color: const Color(0xFF828282),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 32,
            ),
            TextView(
              title: 'Research',
              onTap: () {},
            ),
            const SizedBox(
              width: 32,
            ),
            TextView(
              title: 'Courses',
              onTap: () {},
            ),
            const SizedBox(
              width: 32,
            ),
            TextView(
              title: 'Our Organisation',
              onTap: () {},
            ),
            const SizedBox(
              width: 32,
            ),
            TextView(
              title: 'Alumni',
              onTap: () {},
            ),
            const SizedBox(
              width: 32,
            ),
            TextView(
              title: "Portal",
              onTap: () {},
            ),
            const Spacer(),
            const GetInTouchButton(),
          ],
        ),
      ),
    );
  }
}

class TextView extends StatelessWidget {
  const TextView({super.key, required this.title, required this.onTap});

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          title,
          style: GoogleFonts.inter(
            color: AppColors.greyText,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
