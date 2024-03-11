import 'package:education_system/config/themes/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetInTouchButton extends StatelessWidget {
  const GetInTouchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: AppColors.green,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: AppColors.green),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          'Get in touch',
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
