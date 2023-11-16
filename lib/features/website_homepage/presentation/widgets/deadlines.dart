import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../config/themes/theme_config.dart';

class DeadLinesPage extends StatefulWidget {
  const DeadLinesPage({super.key});

  @override
  State<DeadLinesPage> createState() => _DeadLinesPageState();
}

class _DeadLinesPageState extends State<DeadLinesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0x14F38222)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Text(
            'DeadLines',
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
          Container(
            height: context.getHeight() / 3,
            width: context.getWidth(),
            padding: const EdgeInsets.symmetric(horizontal: 75),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const DeadLineItem(
                    months: 'July - September',
                    updates: 'Admissions and applications',
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class DeadLineItem extends StatelessWidget {
  const DeadLineItem({super.key, required this.months, required this.updates});

  final String months;
  final String updates;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      child: Column(
        children: [
          Text(
            months,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: const Color(0xFF003366),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          SvgPicture.asset(AppImages.deadlinesIcon),
          const SizedBox(
            height: 12,
          ),
          Text(
            updates,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              color: const Color(0xFF003366),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
