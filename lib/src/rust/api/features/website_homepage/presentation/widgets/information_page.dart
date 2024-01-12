import 'package:education_system/config/themes/theme_config.dart';
import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.infoBgColor),
      child: Column(
        children: [
          const SizedBox(height: 60,),
          Text(
            'Information for',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: AppColors.boldText,
              fontSize: 48,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: context.getWidth() / 2,
            child: Text(
              'Join us this September and Dive into the Ultimate Freshers Experience! Get Your Free Freshers Wristband for Unforgettable Nights ',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: AppColors.greyText,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 60),
            child: SizedBox(
                height: context.getHeight() - 150,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 15,
                  ),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return InfoItem(
                      title: 'Prospective Students',
                      description: 'We always begin by working to uncover and understand our client’s product, business and audience.',
                      onTap: () {},
                    );
                  },)
            ),
          ),
        ],
      ),
    );
  }
}

class InfoItem extends StatefulWidget {
  const InfoItem(
      {super.key,
        required this.title,
        required this.description,
        required this.onTap
      });

  final String title;
  final String description;
  final Function() onTap;

  @override
  State<InfoItem> createState() => _InfoItemState();
}

class _InfoItemState extends State<InfoItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isHovered ? AppColors.white : Colors.transparent),
        child: InkWell(
          onTap: widget.onTap,
          splashColor: AppColors.white,
          onHover: (value) {
            setState(() {
              isHovered = value;
            });
          },
          child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              isHovered ? AppImages.hoveredStudentsIcon : AppImages.studentsIcon,
            ),
            const SizedBox(height: 20,),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: AppColors.darkText,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 2,),
            SizedBox(
              width: context.getWidth(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.description,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: AppColors.lightGreyText,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



