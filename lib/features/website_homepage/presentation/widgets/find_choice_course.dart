import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_components/input_fields.dart';

class FindChoiceCourse extends StatefulWidget {
  const FindChoiceCourse({super.key});

  @override
  State<FindChoiceCourse> createState() => _FindChoiceCourseState();
}

class _FindChoiceCourseState extends State<FindChoiceCourse> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(
            AppImages.homeImage,
          width: context.getWidth(),
          height: context.getHeight() - 100,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 300,
          child: SizedBox(
            width: context.getWidth() / 2 + 100,
            child: Text(
              'Empowering Minds, Igniting Futures: Explore Limitless Learning Opportunities with Us!',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.96,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 75,
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            width: context.getWidth() / 2,
            child: SearchForm(
              hint: "Find your choice course",
              onChanged: (val){
                setState(() {});
              },
              controller: searchController,
            ),
          ),
        ),)
      ],
    );
  }
}
