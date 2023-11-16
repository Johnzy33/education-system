import 'package:education_system/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/themes/theme_config.dart';

class SearchForm extends StatelessWidget {
  final String? Function(String?)? validator;
  final String hint;
  final bool readonly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final VoidCallback? onTap;
  final Iterable<String>? autofillHints;
  final VoidCallback? onEditingComplete;
  final Function(String)? onFieldSubmitted;
  final Function(String) onChanged;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatter;

  const SearchForm(
      {super.key,
      this.readonly = false,
      required this.hint,
      required this.onChanged,
      required this.controller,
      this.keyboardType = TextInputType.text,
      this.onTap = null,
      this.onEditingComplete = null,
      this.onFieldSubmitted = null,
      this.inputFormatter,
      this.validator,
      this.autofillHints,
      this.suffixIcon,
      this.prefixIcon
      });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 79,
      alignment: Alignment.centerLeft,
      width: size.width,
      child: TextFormField(
        textAlign: TextAlign.start,
        validator: validator,
        autofillHints: autofillHints,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        maxLines: 1,
        style: GoogleFonts.inter(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: AppColors.greyText),
        onChanged: onChanged,
        onTap: onTap,
        readOnly: readonly,
        textInputAction: TextInputAction.next,
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          errorMaxLines: 3,
          // suffixIcon: suffixIcon ??
          //     SvgPicture.asset(
          //       AppImages.searchIcon,
          //       height: 24,
          //       width: 24,
          //     ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only( left: 30.0, right: 8),
            child: prefixIcon ?? SvgPicture.asset(AppImages.searchIcon,),
          ),
          // prefixIconConstraints: const BoxConstraints(maxWidth: 55, maxHeight: 55),
          hintText: hint,
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 35, vertical: 14),
          hintStyle: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.descriptionTextColor),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: AppColors.descriptionTextColor.withOpacity(0.2),
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                  color: AppColors.descriptionTextColor.withOpacity(0.2))),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: AppColors.red)),
          errorStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.red),
          ),
        ),
        keyboardType: keyboardType,
        inputFormatters: inputFormatter,
      ),
    );
  }
}
