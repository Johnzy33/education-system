import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/constants.dart';

class ResearchPage extends StatefulWidget {
  const ResearchPage({super.key});

  @override
  State<ResearchPage> createState() => _ResearchPageState();
}

class _ResearchPageState extends State<ResearchPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.homeImage,
          width: context.getWidth(),
          height: context.getHeight() / 3,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 29,
          width: context.getWidth(),
          child: Text(
            'Research',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Positioned(
          bottom: 29,
          width: context.getWidth(),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 90.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ResearchItem(
                  numbers: "400+",
                  program: "Projects completed",
                ),
                ResearchItem(
                  numbers: "30",
                  program: "Departments",
                ),
                ResearchItem(
                  numbers: "12",
                  program: "Research Centres",
                ),
                ResearchItem(
                  numbers: "200+",
                  program: "5-star reviews",
                ),
              ],
            ),
          ),)
      ],
    );
  }
}

class ResearchItem extends StatelessWidget {
  const ResearchItem({super.key, required this.program, required this.numbers});

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
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            child: Text(
              program,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}