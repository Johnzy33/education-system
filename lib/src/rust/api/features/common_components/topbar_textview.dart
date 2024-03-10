import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../config/themes/theme_config.dart';

class TopBarTextItem extends StatefulWidget {
  const TopBarTextItem({super.key, required this.title, required this.onTap});

  final String title;
  final Function() onTap;

  @override
  State<TopBarTextItem> createState() => _TopBarTextItemState();
}

class _TopBarTextItemState extends State<TopBarTextItem> {
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