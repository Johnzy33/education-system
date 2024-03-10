import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../../../config/themes/theme_config.dart';
import '../../../../../../../../../core/utils/constants.dart';

class GovTextItem extends StatefulWidget {
  const GovTextItem(
      {super.key,
        required this.title,
        required this.description,
        required this.onTap
      });

  final String title;
  final String description;
  final Function() onTap;

  @override
  State<GovTextItem> createState() => _InfoItemState();
}

class _InfoItemState extends State<GovTextItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.blue,
            width: 1.0,
          ),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              isHovered ? AppImages.hoveredStudentsIcon : AppImages.studentsIcon,
            ),
            const SizedBox(height: 15,),
            Text(
              widget.title,
              style: GoogleFonts.inter(
                color: AppColors.darkText,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 2,),
            Text(
              widget.description,
              style: GoogleFonts.inter(
                color: AppColors.lightGreyText,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}