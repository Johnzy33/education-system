import 'package:education_system/config/routes/routes.dart';
import 'package:education_system/config/themes/theme_config.dart';
import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/get_in_touch_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebTopBarView extends StatefulWidget {
  const WebTopBarView({super.key});

  @override
  State<WebTopBarView> createState() => _WebTopBarViewState();
}

class _WebTopBarViewState extends State<WebTopBarView> {
  bool isHover = false;

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
            InkWell(
                onTap: () {},
                onHover: (hover) {
                  setState(() {
                    isHover = hover;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isHover ? AppColors.blue : Colors.transparent),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: isHover ? 8.0 : 0.0,
                        vertical: isHover ? 4.0 : 0.0,
                    ),
                    child: Text(
                      'Study',
                      style: GoogleFonts.inter(
                        color: isHover ? AppColors.white : const Color(0xFF828282),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )),
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
              onTap: () {
                navigationService.navigateTo(AppRoutes.webLogin);
              },
            ),
            const Spacer(),
            const GetInTouchButton(),
          ],
        ),
      ),
    );
  }
}

class TextView extends StatefulWidget {
  const TextView({super.key, required this.title, required this.onTap});

  final String title;
  final Function() onTap;

  @override
  State<TextView> createState() => _TextViewState();
}

class _TextViewState extends State<TextView> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (hover) {
        setState(() {
          isHover = hover;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isHover ? AppColors.blue : Colors.transparent),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: isHover ? 8.0 : 4.0,
              vertical: isHover ? 5.0 : 4.0,
          ),
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: isHover ? AppColors.lightPrimary : AppColors.greyText,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
