import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../../config/routes/routes.dart';
import '../../../../../../../../config/themes/theme_config.dart';
import '../../../../../../../../core/utils/constants.dart';
import '../../../../common_components/custom_btn.dart';
import '../../../../common_components/input_fields.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final middleNameController = TextEditingController();
  final surNameController = TextEditingController();
  final jambRegNumberController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Container(
        width: context.getWidth() / 3 + 100,
        height: context.getHeight() - 100,
        decoration: ShapeDecoration(
          color: AppColors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.appLogo,
                    width: 100,
                    height: 80,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Registration',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Jamb Reg Number',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              EditTextForm(
                  hint: "Enter Jamb Reg Number",
                  onChanged: (value) {
                    setState(() {});
                  },
                  onFieldSubmitted: (value) {
                    setState(() {});
                  },
                  controller: jambRegNumberController),
              const SizedBox(
                height: 15,
              ),
              Text(
                'First Name',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              EditTextForm(
                  hint: "Enter Your First Name",
                  onChanged: (value) {
                    setState(() {});
                  },
                  onFieldSubmitted: (value) {
                    setState(() {});
                  },
                  controller: firstNameController),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Middle Name',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              EditTextForm(
                  hint: "Enter Your Middle Name",
                  onChanged: (value) {
                    setState(() {});
                  },
                  onFieldSubmitted: (value) {
                    setState(() {});
                  },
                  controller: middleNameController),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Last Name',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              EditTextForm(
                  hint: "Enter Your Surname",
                  onChanged: (value) {
                    setState(() {});
                  },
                  onFieldSubmitted: (value) {
                    setState(() {});
                  },
                  controller: surNameController),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Phone Number',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              EditTextForm(
                  hint: "Enter Your Phone Number",
                  onChanged: (value) {
                    setState(() {});
                  },
                  onFieldSubmitted: (value) {
                    setState(() {});
                  },
                  controller: phoneNumberController),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Password',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              EditTextForm(
                  hint: "Enter password",
                  onChanged: (value) {
                    setState(() {});
                  },
                  onFieldSubmitted: (value) {
                    setState(() {});
                  },
                  controller: passwordController),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Confirm Password',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              EditTextForm(
                  hint: "Enter password again",
                  onChanged: (value) {
                    setState(() {});
                  },
                  onFieldSubmitted: (value) {
                    setState(() {});
                  },
                  controller: passwordController),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 22,
              ),
              AppButton(title: "Register Student", onPressed: () {}, enabled: true),
              const SizedBox(
                height: 22,
              ),
              InkWell(
                onTap: () {
                  navigationService.navigateTo(AppRoutes.webLogin);
                },
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account?',
                        style: GoogleFonts.inter(
                          color: const Color(0xFFE0E0E0),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: ' Login',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppImages.supportAgent),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Need Help? ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.karla(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.24,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}