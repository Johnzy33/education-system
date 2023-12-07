import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/themes/theme_config.dart';

class AppButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final bool enabled;
  final Color? color;

  const AppButton({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.enabled,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: enabled ? onPressed : null,
        child: Container(
          height: 47,
          // margin: const EdgeInsets.only(left: 20,right: 20),
          padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            color: enabled
                ? color ?? AppColors.lightPrimary
                : AppColors.descriptionTextColor,),
          child: Center(
              child: Text(
                'Login',
                style: GoogleFonts.inter(
                  color: enabled ? AppColors.blue : AppColors.lightPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )),
        ));
  }
}