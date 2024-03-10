import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../config/themes/theme_config.dart';

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
      width: context.getWidth(),
      height: context.getHeight() - 80,
      color: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
              height: context.getHeight() / 2 + 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 90.0,),
                child: ListView.builder(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return AboutSchoolItems(
                        onTap: () {},
                      );
                    }),
              )),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class AboutSchoolItems extends StatefulWidget {
  const AboutSchoolItems({super.key, required this.onTap});

  final Function() onTap;

  @override
  State<AboutSchoolItems> createState() => _AboutSchoolItemsState();
}

class _AboutSchoolItemsState extends State<AboutSchoolItems> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 384,
      padding: const EdgeInsets.only(right: 32, bottom: 10),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: isHovered ? AppColors.facultiesBgColor : AppColors.white,
        // shadowColor: AppColors.white,
        elevation: isHovered ? 8.0 : 0.0,
        child: InkWell(
          onTap: widget.onTap,
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onHover: (value) {
            setState(() {
              isHovered = value;
            });
          },
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
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20),
                      topRight: const Radius.circular(20),
                      bottomLeft: Radius.circular(isHovered ? 20 : 1),
                      bottomRight: Radius.circular(isHovered ? 1 : 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: isHovered ? 12.0 : 0.0),
                child: Column(
                  children: [
                    Text(
                      'Olivia Rhye • 20 Jan 2022',
                      style: GoogleFonts.inter(
                        color: AppColors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
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
                      height: 10,
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
              )
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
