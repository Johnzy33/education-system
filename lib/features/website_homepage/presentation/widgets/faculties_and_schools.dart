import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/themes/theme_config.dart';

class FacultiesAndSchoolsPage extends StatefulWidget {
  const FacultiesAndSchoolsPage({super.key});

  @override
  State<FacultiesAndSchoolsPage> createState() =>
      _FacultiesAndSchoolsPageState();
}

class _FacultiesAndSchoolsPageState extends State<FacultiesAndSchoolsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.facultiesBgColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            'Faculties and Schools',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: AppColors.boldText,
              fontSize: 48,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: context.getHeight() / 3,
            width: context.getWidth(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // physics: const NeverScrollableScrollPhysics(),
                  // padding: const EdgeInsets.symmetric(horizontal: 90),
                  itemCount: AppStrings.facultiesList.length,
                  itemBuilder: (context, index) {
                    final totalItemsWidth = 86 * AppStrings.facultiesList.length;
                    final padding = (context.getWidth() - totalItemsWidth) / 8;
                    final faculties = AppStrings.facultiesList[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? padding : 20.0,
                        right: index == AppStrings.facultiesList.length - 1 ? padding : 20.0,
                      ),
                      child: FacultyItem(
                        text: faculties.toString().trim(),
                        textColor: AppColors.facultiesTextColors[index],
                        color: AppColors.facultiesColors[index],
                        onTap: () {},
                      ),
                    );
                  }),
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          Text(
            'Programmes',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: AppColors.boldText,
              fontSize: 48,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const ProgramsView(),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class ProgramsView extends StatelessWidget {
  const ProgramsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ProgramsItem(
          numbers: '38+',
          program: "Educators",
        ),
        ProgramsItem(
          numbers: '30',
          program: "Undergraduate Programmes",
        ),
        ProgramsItem(
          numbers: '65+',
          program: "Postgraduate Students",
        ),
        ProgramsItem(
          numbers: '73',
          program: "Master's Degree Programmes",
        ),
        ProgramsItem(
          numbers: '75+',
          program: "Researchers",
        ),
      ],
    );
  }
}


class ProgramsItem extends StatelessWidget {
  const ProgramsItem({super.key, required this.program, required this.numbers});

  final String program;
  final String numbers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            numbers,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: const Color(0x7F101828),
              fontSize: 48,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            child: Text(
              program,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: const Color(0xFF828282),
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class FacultyItem extends StatefulWidget {
  const FacultyItem({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.onTap,
  });

  final String text;
  final Color color;
  final Color textColor;
  final Function() onTap;

  @override
  State<FacultyItem> createState() => _FacultyItemState();
}

class _FacultyItemState extends State<FacultyItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86,
      decoration: ShapeDecoration(
        color: widget.color,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 8,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: isHovered ? AppColors.navyBlue : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(1),
        ),
      ),
      child: InkWell(
        onTap: widget.onTap,
        onHover: (hover) {
          setState(() {
            isHovered = hover;
          });
        },
        child: RotatedBox(
          quarterTurns: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Text(
              widget.text,
              textAlign: TextAlign.start,
              style: GoogleFonts.inter(
                color: widget.textColor,
                fontSize: 60,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
